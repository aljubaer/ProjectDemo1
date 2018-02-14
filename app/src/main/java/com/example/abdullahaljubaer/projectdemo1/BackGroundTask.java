package com.example.abdullahaljubaer.projectdemo1;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

/**
 * Created by ABDULLAH AL JUBAER on 23-01-18.
 */

public class BackGroundTask extends AsyncTask {

    private Context context;
    private ArrayList<String> arrayList = new ArrayList<>();

    public BackGroundTask(Context context) {
        this.context = context;
    }
    @Override
    protected Object doInBackground(Object[] objects) {

        String regUrl = Config.DATA_URL;
        String method = (String) objects[0];
        String text = "";

        if (method.equals("getVariations")){
            String cropName = (String) objects[1];

            try {
                URL url = new URL(regUrl);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();

                BufferedWriter bufferedWriter = new BufferedWriter(
                        new OutputStreamWriter(outputStream, "UTF-8")
                );

                String data = URLEncoder.encode(Config.TAG_CROP_NAME, "UTF-8")+"="+URLEncoder.encode(cropName, "UTF-8");

                bufferedWriter.write(data);
                bufferedWriter.flush();
                int statusCode = httpURLConnection.getResponseCode();
                if (statusCode == 200) {

                    BufferedReader reader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    String line;

                    while ((line = reader.readLine()) != null)
                        sb.append(line).append("\n");

                    text = sb.toString();
                    bufferedWriter.close();
                }

            } catch (MalformedURLException e) {
                System.out.printf("NO");
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(text != null) {
                JSONArray jsonArray = null;

                try {
                    jsonArray = new JSONArray(text);

                    JSONObject jsonObject;
                    System.out.println("HHHHH- " + jsonArray.length());

                    for(int i = 0; i<jsonArray.length(); i++) {
                        jsonObject = jsonArray.getJSONObject(i);
                        arrayList.add(jsonObject.getString(Config.TAG_CROP_VARIATION));
                    }
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        System.out.println("ffgf" + arrayList.size());
        MainActivity.varList = (String[]) arrayList.toArray();

        return text;
    }
    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    protected void onPostExecute(Object o) {
        Toast.makeText(context, (String) o, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onProgressUpdate(Object[] values) {
        super.onProgressUpdate(values);
    }

    public ArrayList getArrayList(){
        return arrayList;
    }

}

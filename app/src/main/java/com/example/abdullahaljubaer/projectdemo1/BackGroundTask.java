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

                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                int statusCode = httpURLConnection.getResponseCode();
                if (statusCode == 200) {

                    StringBuilder sb = new StringBuilder();
                    String line;

                    while ((line = bufferedReader.readLine()) != null)
                        sb.append(line).append("\n");

                    text = sb.toString();
                    bufferedWriter.close();
                    bufferedReader.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                }

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(text != null) {
                //JSONArray jsonArray = null;

                try {
                    JSONObject jsonObject = new JSONObject(text);
                    JSONArray jsonArray = jsonObject.getJSONArray("result");

                    for(int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonObject1 = jsonArray.getJSONObject(i);
                        arrayList.add(jsonObject1.getString(Config.TAG_CROP_VARIATION));
                    }
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
            }
            MainActivity.varList = arrayList.toArray(new String[arrayList.size()]);
        }

        if (method.equals("getRecommendation")) {

            String cropName = (String) objects[1];
            String cropVar = (String) objects[2];
            String texture = (String) objects[3];
            String n = (String) objects[4];
            String p = (String) objects[5];
            String k = (String) objects[6];
            String s = (String) objects[7];
            String zn = (String) objects[8];
            String b = (String) objects[9];


            try {
                URL url = new URL(regUrl);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();

                BufferedWriter bufferedWriter = new BufferedWriter(
                        new OutputStreamWriter(outputStream, "UTF-8")
                );

                String data =
                        URLEncoder.encode("crop_name", "UTF-8") + "=" + URLEncoder.encode(cropName, "UTF-8") + "&"
                                + URLEncoder.encode("crop_variation", "UTF-8") + "=" + URLEncoder.encode(cropVar, "UTF-8") + "&"
                                + URLEncoder.encode("texture", "UTF-8") + "=" + URLEncoder.encode(texture, "UTF-8") + "&"
                                + URLEncoder.encode("N", "UTF-8") + "=" + URLEncoder.encode(n, "UTF-8") + "&"
                                + URLEncoder.encode("P", "UTF-8") + "=" + URLEncoder.encode(p, "UTF-8") + "&"
                                + URLEncoder.encode("K", "UTF-8") + "=" + URLEncoder.encode(k, "UTF-8") + "&"
                                + URLEncoder.encode("S", "UTF-8") + "=" + URLEncoder.encode(s, "UTF-8") + "&"
                                + URLEncoder.encode("Zn", "UTF-8") + "=" + URLEncoder.encode(zn, "UTF-8") + "&"
                                + URLEncoder.encode("B", "UTF-8") + "=" + URLEncoder.encode(b, "UTF-8");

                bufferedWriter.write(data);
                bufferedWriter.flush();

                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                int statusCode = httpURLConnection.getResponseCode();
                if (statusCode == 200) {

                    StringBuilder sb = new StringBuilder();
                    String line;

                    while ((line = bufferedReader.readLine()) != null)
                        sb.append(line).append("\n");

                    text = sb.toString();
                    bufferedWriter.close();
                    bufferedReader.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                }

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (text != null) {
                JSONArray jsonArray = null;

                try {
                    jsonArray = new JSONArray(text);

                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonObject1 = jsonArray.getJSONObject(i);
                        arrayList.add(jsonObject1.getString(Config.TAG_CROP_VARIATION));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

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
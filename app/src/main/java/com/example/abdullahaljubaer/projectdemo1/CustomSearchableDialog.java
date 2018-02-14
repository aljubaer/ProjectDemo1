package com.example.abdullahaljubaer.projectdemo1;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

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
import java.util.Arrays;

/**
 * Created by ABDULLAH AL JUBAER on 12-02-18.
 */

public class CustomSearchableDialog {
    
    private Context context;
    private String[] values = {""};
    private ArrayList<String> currentValueList;
    private AlertDialog dialog = null;
    private int textLength = 0;
    private String selectedText = "";
    private TextView textView = null;
    public ArrayList<String> a = null;
    
    public CustomSearchableDialog (Context context, String[] values, AlertDialog dialog, TextView v){

        this.dialog = dialog;
        this.context = context;
        this.values = values;
        this.textView = v;
        createView();

    }


    private void createView(){

        AlertDialog.Builder mDialog = new AlertDialog.Builder(context);
        final EditText editText = new EditText(context);
        final ListView listView = new ListView(context);
        editText.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_search, 0, 0, 0);
        editText.setPadding(10,10,10,10);
        editText.setTextSize(30);
        currentValueList = new ArrayList<String> (Arrays.asList(values));

        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.addView(editText);
        CustomAlertAdapter arrayAdapter = new CustomAlertAdapter((Activity) context, currentValueList);
        listView.setAdapter(arrayAdapter);
        layout.addView(listView);
        mDialog.setView(layout);

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                                            @Override
                                            public void onItemClick (AdapterView < ? > adapter, View view, int position, long arg){
                                                dialog.dismiss();
                                                if (currentValueList.size() > 0 && position >= 0 && position < currentValueList.size())
                                                    selectedText = currentValueList.get(position);
                                                else selectedText = values[position];
                                                textView.setText(selectedText);
                                                BackGroundTask backGroundTask = new BackGroundTask(context);
                                                backGroundTask.execute("getVariations", selectedText);
                                                /*
                                                String regUrl = Config.DATA_URL;
                                                String method = (String) "getVariations";
                                                String text = "";

                                                if (method.equals("getVariations")){
                                                    String cropName = (String) selectedText;

                                                    try {
                                                        URL url = new URL(regUrl);
                                                        HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                                                        httpURLConnection.setRequestMethod("POST");
                                                        httpURLConnection.setDoOutput(true);
                                                        httpURLConnection.setDoInput(true);
                                                        OutputStream outputStream = httpURLConnection.getOutputStream();
                                                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream,"UTF-8"));

                                                        String data = URLEncoder.encode(Config.TAG_CROP_NAME, "UTF-8")+"="+URLEncoder.encode(cropName, "UTF-8");

                                                        bufferedWriter.write(data);
                                                        bufferedWriter.flush();
                                                        bufferedWriter.close();
                                                        outputStream.close();
                                                        int statusCode = httpURLConnection.getResponseCode();
                                                        if (statusCode == 200) {
                                                            InputStream inputStream = httpURLConnection.getInputStream();
                                                            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1"));
                                                            StringBuilder sb = new StringBuilder();
                                                            String line;

                                                            while ((line = reader.readLine()) != null)
                                                                sb.append(line).append("\n");

                                                            text = sb.toString();
                                                            System.out.println(text);
                                                            reader.close();
                                                            inputStream.close();
                                                            httpURLConnection.disconnect();
                                                        }

                                                    } catch (Exception e) {
                                                        System.out.printf("NO");
                                                        e.printStackTrace();
                                                    }
                                                    if(text != null) {
                                                        JSONArray jsonArray = null;

                                                        try {
                                                            jsonArray = new JSONArray(text);

                                                            JSONObject jsonObject;

                                                            for(int i = 0; i<jsonArray.length(); i++) {
                                                                jsonObject = jsonArray.getJSONObject(i);
                                                                a.add(jsonObject.getString(Config.TAG_CROP_VARIATION));
                                                            }
                                                        }
                                                        catch (Exception e) {
                                                            e.printStackTrace();
                                                        }
                                                    }
                                                }
                                                */
                                            }
                                        }
        );

        editText.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable s){

            }

            public void beforeTextChanged(CharSequence s, int start, int count, int after){

            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                editText.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                textLength = editText.getText().length();
                currentValueList.clear();
                for (int i = 0; i < values.length; i++) {
                    if (textLength <= values[i].length()) {
                        if(values[i].toLowerCase().contains(editText.getText().toString().toLowerCase().trim())) {
                            currentValueList.add(values[i]);
                        }
                    }
                }
                listView.setAdapter(new CustomAlertAdapter((Activity) context, currentValueList));
            }
        });

        mDialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {

                dialog.dismiss();

            }
        });
        dialog = mDialog.show();

    }

    public String getSelectedText(){
        return selectedText;
    }
    
    
}

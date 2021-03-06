package com.example.abdullahaljubaer.projectdemo1;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by ABDULLAH AL JUBAER on 13-02-18.
 */

public class CustomDialog {

    private Context context;
    private String[] values = {""};
    private ArrayList<String> currentValueList;
    private AlertDialog dialog = null;
    private String selectText = "";
    private TextView textView = null;

    public CustomDialog (Context context, String[] values, AlertDialog dialog, TextView v){

        this.dialog = dialog;
        this.context = context;
        this.values = values;
        this.textView = v;
        createView();

    }


    private void createView(){

        AlertDialog.Builder mDialog = new AlertDialog.Builder(context);
        final ListView listView = new ListView(context);
        currentValueList = new ArrayList<String> (Arrays.asList(values));

        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        CustomAlertAdapter arrayAdapter = new CustomAlertAdapter((Activity) context, currentValueList);
        listView.setAdapter(arrayAdapter);
        layout.addView(listView);
        mDialog.setView(layout);

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                                            @Override
                                            public void onItemClick (AdapterView < ? > adapter, View view, int position, long arg){
                                                dialog.dismiss();
                                                selectText = values[position];
                                                textView.setText(selectText);
                                            }
                                        }
        );

        mDialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {

                dialog.dismiss();

            }
        });
        dialog = mDialog.show();

    }

    public String getSelectText(){
        return selectText;
    }

}

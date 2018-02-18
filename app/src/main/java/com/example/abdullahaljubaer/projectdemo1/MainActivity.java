package com.example.abdullahaljubaer.projectdemo1;

import android.app.AlertDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private TextView txtCropName = null;
    private TextView txtVar = null;
    private TextView txtTexture = null;
    private TextView txtStatusN = null;

    private EditText editTextN = null;
    private EditText editTextP = null;
    private EditText editTextK = null;
    private EditText editTextS = null;
    private EditText editTextZn = null;
    private EditText editTextB = null;



    static String[] cropList = null;

    static String[] varList = {""};

    static List<String> ls = null;

    static String[] textureList = {""};

    private String[] statusList = {"Very low", "Low", "Medium", "Optimum", "High", "Very high"};

    CustomSearchableDialog searchableDialog1;


    private ArrayList<String> arrayList;
    int textLength = 0;
    private AlertDialog mAlertDialog = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test1);


        txtCropName = findViewById(R.id.txt_cropname);
        txtVar = findViewById(R.id.txt_var);
        txtTexture = findViewById(R.id.txt_texture);
        txtStatusN = findViewById(R.id.txt_sN);

        editTextN = findViewById(R.id.edtxt_N);
        editTextP = findViewById(R.id.edtxt_P);
        editTextK = findViewById(R.id.edtxt_K);
        editTextS = findViewById(R.id.edtxt_S);
        editTextZn = findViewById(R.id.edtxt_Zn);
        editTextB = findViewById(R.id.edtxt_B);

        BackGroundTask bt = new BackGroundTask(MainActivity.this);
        bt.execute("getAllCrops");
        BackGroundTask bt1 = new BackGroundTask(MainActivity.this);
        bt1.execute("getAllTextures");

    }

    public void selectCrop (View view){

        searchableDialog1 = new CustomSearchableDialog(MainActivity.this, cropList, mAlertDialog, txtCropName, 1);

    }


    public void selectVar (View view){

        CustomSearchableDialog searchableDialog = new CustomSearchableDialog(MainActivity.this,
                varList, mAlertDialog, txtVar, 2);
        //String val = searchableDialog.getSelectedText();

    }

    public void selectTexture (View view) {

        new CustomSearchableDialog(MainActivity.this, textureList, mAlertDialog, txtTexture, 2);

    }

    public void selectStatusN (View view){

        new CustomDialog(MainActivity.this, statusList, mAlertDialog, txtStatusN);

    }

    public void createRecommendation (View view){

        BackGroundTask bt = new BackGroundTask(MainActivity.this);
        bt.execute("getRecommendation",
                txtCropName.getText().toString(),
                txtVar.getText().toString(),
                txtTexture.getText().toString(),
                editTextN.getText().toString(),
                editTextP.getText().toString(),
                editTextK.getText().toString(),
                editTextS.getText().toString(),
                editTextZn.getText().toString(),
                editTextB.getText().toString()
        );

        String[] v = {"N", "P", "K", "S", "Zn", "B"};

        Intent intent = new Intent(this, RecommendationActivity.class);

        int len = 0;

        try{
            len = ls.size();

            for (int i = 0; i < len; i++){
                intent.putExtra(v[i], ls.get(i));
            }

            startActivity(intent);

        } catch (Exception e){
            e.getMessage();
        }


        //startActivity(intent);

    }
}

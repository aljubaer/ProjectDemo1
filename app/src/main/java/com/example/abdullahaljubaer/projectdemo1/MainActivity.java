package com.example.abdullahaljubaer.projectdemo1;

import android.app.AlertDialog;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Arrays;

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



    private String[] cropList = {"Boro rice", "T. Aus rice", "B. Aus rice", "T. Aman rice", "Wheat(Irrigated)",
                                "Wheat(Rainfed)", "Hybrid maize", "Maize", "Potato", "Boro rice", "T. Aus rice",
                                "B. Aus rice", "T. Aman rice", "Wheat(Irrigated)",
                                "Wheat(Rainfed)", "Hybrid maize", "Maize", "Potato"};

    static String[] varList = {"BRRI dhan 28", "BRRI dhan 28", "BRRI dhan 28", "BRRI dhan 28", "Binadhan"};

    private String[] textureList = {"Sandy", "Sandy-Loamy", "Loamy", "Loamy-Clayey", "Clayey"};

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

        startActivity(new Intent(this, RecommendationActivity.class));

    }
}

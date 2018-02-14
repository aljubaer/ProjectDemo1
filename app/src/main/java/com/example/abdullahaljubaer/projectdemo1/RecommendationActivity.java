package com.example.abdullahaljubaer.projectdemo1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class RecommendationActivity extends AppCompatActivity {

    Spinner spinnerUnitLand = null;
    //private String[] units = {"hector", "decimal"};
    private List<String> units = new ArrayList<>();
    private String unit = "hector";

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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_recommendation);

        units.add("hector");
        units.add("decimal");
        spinnerUnitLand = findViewById(R.id.spn_unit_land);
        ArrayAdapter<String> spnAdapter = new ArrayAdapter<String>(
                RecommendationActivity.this, android.R.layout.simple_spinner_item, units);
        spnAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinnerUnitLand.setAdapter(spnAdapter);

        txtCropName =(TextView) findViewById(R.id.txt_cropname);
        txtVar = (TextView) findViewById(R.id.txt_var);
        txtTexture = (TextView) findViewById(R.id.txt_texture);
        txtStatusN = (TextView) findViewById(R.id.txt_sN);


        editTextN = findViewById(R.id.edtxt_N);
        editTextP = findViewById(R.id.edtxt_P);
        editTextK = findViewById(R.id.edtxt_K);
        editTextS = findViewById(R.id.edtxt_S);
        editTextZn = findViewById(R.id.edtxt_Zn);
        editTextB = findViewById(R.id.edtxt_B);

        BackGroundTask bt = new BackGroundTask(RecommendationActivity.this);
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

    }
}

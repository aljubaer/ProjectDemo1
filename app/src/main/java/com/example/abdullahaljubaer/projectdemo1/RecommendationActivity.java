package com.example.abdullahaljubaer.projectdemo1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class RecommendationActivity extends AppCompatActivity {

    Spinner spinnerUnitLand = null;
    //private String[] units = {"hector", "decimal"};
    private List<String> units = new ArrayList<>();
    private String unit = "hector";

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

    }
}

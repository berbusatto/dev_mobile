package com.qwerty.provaex02;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    double ladoA, ladoB, ladoC;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();

        Button calcular = (Button) findViewById(R.id.calcular);
        Button limpar = (Button) findViewById(R.id.limpar);
        TextView resultado = (TextView) findViewById(R.id.resultado);
        EditText lado1 = (EditText) findViewById(R.id.ladoA);
        EditText lado2 = (EditText) findViewById(R.id.ladoB);
        EditText lado3 = (EditText) findViewById(R.id.ladoC);

        calcular.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ladoA = Double.parseDouble(lado1.getText().toString());
                ladoB = Double.parseDouble((lado2.getText().toString()));
                ladoC = Double.parseDouble((lado3.getText().toString()));

                if (ladoA == ladoB && ladoA == ladoC){
                    resultado.setText("Equilátero");
                } else if(ladoA != ladoB && ladoA != ladoC && ladoB != ladoC){
                    resultado.setText("Escaleno");
                } else{
                    resultado.setText("Isóceles");
                }

            }
        });

        limpar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                lado1.setText("");
                lado2.setText("");
                lado3.setText("");
                resultado.setText("");
            }
        });
    }
}
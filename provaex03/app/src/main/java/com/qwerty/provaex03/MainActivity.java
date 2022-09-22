package com.qwerty.provaex03;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.text.NumberFormat;


public class MainActivity extends AppCompatActivity {

    EditText real;
    TextView dolar;
    TextView euro;
    TextView libra;
    Button converter;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();

        real = findViewById(R.id.valorReais);
        dolar = findViewById(R.id.valorDolares);
        euro = findViewById(R.id.valorEuros);
        libra = findViewById(R.id.valorLibras);
        converter = findViewById(R.id.converterValores);

        converter.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double valorReal = Double.parseDouble(real.getText().toString());
                double valorDolar = valorReal * 0.20;
                double valorEuro = valorReal * 0.19;
                double valorLibra = valorReal * 0.17;

                NumberFormat formatter = NumberFormat.getCurrencyInstance();
                String valorDolarFormat = formatter.format(valorDolar);
                String valorEuroFormat = formatter.format(valorEuro);
                String valorLibraFormat = formatter.format(valorLibra);

                dolar.setText("Dolar: " + valorDolarFormat);
                euro.setText("Euro: " + valorEuroFormat);
                libra.setText("Libra: " + valorLibraFormat);
            }
        });


    }
}
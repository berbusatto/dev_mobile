package com.example.calculadora;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;

public class Calculadora extends Activity {

    private Button botao1, botao2, botao3, botao4, botao5, botao6, botao7, botao8,
            botao9, botao0, botaoDiv, botaoMult, botaoSub, botaoAdd, botaoCE, botaoDP;

    TextView resultDisplay;

    public void umCara(View view){
        resultDisplay.setText("12");
    }
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.calculadoralayout);

        botao0 = findViewById(R.id.botao0);
        botao1 = findViewById(R.id.botao1);
        botao2 = findViewById(R.id.botao2);
        botao3 = findViewById(R.id.botao3);
        botao4 = findViewById(R.id.botao4);
        botao5 = findViewById(R.id.botao5);
        botao6 = findViewById(R.id.botao6);
        botao7 = findViewById(R.id.botao7);
        botao8 = findViewById(R.id.botao8);
        botao9 = findViewById(R.id.botao9);
        botaoDiv = findViewById(R.id.botaoDiv);
        botaoMult = findViewById(R.id.botaoMult);
        botaoSub = findViewById(R.id.botaoSub);
        botaoAdd = findViewById(R.id.botaoAdd);

        resultDisplay = findViewById(R.id.resultDisplay);


        View.OnClickListener clicado = new View.OnClickListener() {

            @Override
            public void onClick(View view) {

                TextView display = findViewById(R.id.resultDisplay);
                switch (view.getId()) {
                    case R.id.botao0:
                        display.setText(display.getText() + "0");
                    case R.id.botao1:
                        display.setText(display.getText() + "1");
                    case R.id.botao2:
                        display.setText(display.getText() + "2");
                    case R.id.botao3:
                        display.setText(display.getText() + "3");
                    case R.id.botao4:
                        display.setText(display.getText() + "4");
                    case R.id.botao5:
                        display.setText(display.getText() + "5");
                    case R.id.botao6:
                        display.setText(display.getText() + "6");
                    case R.id.botao7:
                        display.setText(display.getText() + "7");
                    case R.id.botao8:
                        display.setText(display.getText() + "8");
                    case R.id.botao9:
                        display.setText(display.getText() + "9");

                };
            }
        };
    };
};
package com.qwerty.calculadorajavaandroid;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import net.objecthunter.exp4j.Expression;
import net.objecthunter.exp4j.ExpressionBuilder;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    private Button numeroZero, numeroUm, numeroDois, numeroTres, numeroQuatro, numeroCinco,
    numeroSeis, numeroSete, numeroOito, numeroNove, ponto, soma, multiplicacao, subtracao, divisao, igual,
    botao_limpar, backspace;

    private TextView txtExpressao, txtResultado;




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        InciarComponentes();
        getSupportActionBar().hide();

        numeroZero.setOnClickListener(this);
        numeroUm.setOnClickListener(this);
        numeroDois.setOnClickListener(this);
        numeroTres.setOnClickListener(this);
        numeroQuatro.setOnClickListener(this);
        numeroCinco.setOnClickListener(this);
        numeroSeis.setOnClickListener(this);
        numeroSete.setOnClickListener(this);
        numeroOito.setOnClickListener(this);
        numeroNove.setOnClickListener(this);
        soma.setOnClickListener(this);
        subtracao.setOnClickListener(this);
        divisao.setOnClickListener(this);
        multiplicacao.setOnClickListener(this);
        ponto.setOnClickListener(this);

        botao_limpar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                txtExpressao.setText("");
                txtResultado.setText("");
            }
        });

        backspace.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TextView expressao = findViewById(R.id.txt_expressao);
                String string = expressao.getText().toString();
                if(!string.isEmpty()){
                    byte var0 = 0;
                    int var1 = string.length() - 1;
                    String txtExpressao = string.substring(var0, var1);
                    expressao.setText(txtExpressao);
                    txtResultado.setText("");

                }
            }
        });

        igual.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Expression expressao = new ExpressionBuilder(txtExpressao.getText().toString()).build();
                double resultado = expressao.evaluate();
                long longResult = (long) resultado;


                try{
                    if (resultado==(double)longResult){
                        txtResultado.setText((CharSequence) String.valueOf(longResult));
                    } else{
                        txtResultado.setText((CharSequence) String.valueOf(resultado));
                    }

                } catch (Exception e){
                    e.printStackTrace();
                }
            }
        });

    }
    private void InciarComponentes(){
        numeroZero = findViewById(R.id.numero_zero);
        numeroUm = findViewById(R.id.numero_um);
        numeroDois = findViewById(R.id.numero_dois);
        numeroTres = findViewById(R.id.numero_tres);
        numeroQuatro = findViewById(R.id.numero_quatro);
        numeroCinco = findViewById(R.id.numero_cinco);
        numeroSeis = findViewById(R.id.numero_seis);
        numeroSete = findViewById(R.id.numero_sete);
        numeroOito = findViewById(R.id.numero_oito);
        numeroNove = findViewById(R.id.numero_nove);
        ponto = findViewById(R.id.ponto);
        soma = findViewById(R.id.adicao);
        divisao = findViewById(R.id.divisao);
        multiplicacao = findViewById(R.id.multiplicacao);
        subtracao = findViewById(R.id.subtracao);
        igual = findViewById(R.id.igual);
        botao_limpar = findViewById(R.id.bt_limpar);
        backspace = findViewById(R.id.backspace);
        txtExpressao = findViewById(R.id.txt_expressao);
        txtResultado = findViewById(R.id.txt_resultado);
    }

    public void acrescentarUmaExpressao(String string, boolean limparDados){
        if(txtResultado.getText().equals("")){
            txtExpressao.setText(" ");
        }

        if (limparDados){
            txtResultado.setText(" ");
            txtExpressao.append(string);
        } else{
            txtExpressao.append(txtResultado.getText());
            txtExpressao.append(string);
            txtResultado.setText(" ");
        }

    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.numero_zero:
                acrescentarUmaExpressao("0", true);
                break;
            case R.id.numero_um:
                acrescentarUmaExpressao("1", true);
                break;
            case R.id.numero_dois:
                acrescentarUmaExpressao("2", true);
                break;
            case R.id.numero_tres:
                acrescentarUmaExpressao("3", true);
                break;
            case R.id.numero_quatro:
                acrescentarUmaExpressao("4", true);
                break;
            case R.id.numero_cinco:
                acrescentarUmaExpressao("5", true);
                break;
            case R.id.numero_seis:
                acrescentarUmaExpressao("6", true);
                break;
            case R.id.numero_sete:
                acrescentarUmaExpressao("7", true);
                break;
            case R.id.numero_oito:
                acrescentarUmaExpressao("8", true);
                break;
            case R.id.numero_nove:
                acrescentarUmaExpressao("9", true);
                break;
            case R.id.ponto:
                acrescentarUmaExpressao(".", true);
                break;
            case R.id.adicao:
                acrescentarUmaExpressao("+", false);
                break;
            case R.id.subtracao:
                acrescentarUmaExpressao("-", false);
                break;
            case R.id.multiplicacao:
                acrescentarUmaExpressao("*", false);
                break;
            case R.id.divisao:
                acrescentarUmaExpressao("/", false);
                break;



        }
    }


}
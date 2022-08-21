package qwerty.aulasMobileJava;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


import androidx.annotation.Nullable;

public class ResultActivity extends Activity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
        Intent intent = getIntent();
        String precoGasolina = intent.getStringExtra(MainActivity.EXTRA_PRECO_GASOLINA);
        String precoEtanol = intent.getStringExtra(MainActivity.EXTRA_PRECO_ETANOL);
        String consumoGasolina = intent.getStringExtra(MainActivity.EXTRA_CONSUMO_GASOLINA);
        String consumoEtanol = intent.getStringExtra(MainActivity.EXTRA_CONSUMO_ETANOL);

        TextView resultadoView = findViewById(R.id.textoResultado);
        TextView rslGasolina = findViewById(R.id.rslitrogasolina);
        TextView rslEtanol = findViewById(R.id.rslitroetanol);
        TextView kmlGasolina = findViewById(R.id.kmlitrogasolina);
        TextView kmlEtanol = findViewById(R.id.kmlitroetanol);
        TextView relacaoEtanolGasolina = findViewById(R.id.relacaoetanolgasolina);
        TextView gastoGasolina = findViewById(R.id.gastogasolina);
        TextView gastoEtanol = findViewById(R.id.gastoetanol);




        double precoGasolinaBack = Double.parseDouble(precoGasolina);
        double precoEtanolBack = Double.parseDouble(precoEtanol);
        double consumoGasolinaBack = Double.parseDouble(consumoGasolina);
        double consumoEtanolBack = Double.parseDouble(consumoEtanol);
        double resultado = precoEtanolBack / precoGasolinaBack;

        double gastoGasolinaBack = precoGasolinaBack / consumoGasolinaBack;

        double gastoEtanolBack = precoEtanolBack / consumoEtanolBack;

        rslGasolina.setText(precoGasolina);
        rslEtanol.setText(precoEtanol);
        kmlGasolina.setText(consumoGasolina);
        kmlEtanol.setText(consumoEtanol);
        relacaoEtanolGasolina.setText(String.format("%.2f",resultado));
        gastoGasolina.setText(String.format("%.2f",gastoGasolinaBack));
        gastoEtanol.setText(String.format("%.2f",gastoEtanolBack));




        if(resultado >= 0.7){
            resultadoView.setText("Abasteça com Gasolina!");
        } else {
            resultadoView.setText("Abasteça com Etanol!");
        }

        Button backButton = findViewById(R.id.botaoVoltar);

        backButton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                ResultActivity.super.onBackPressed();
            }
        });
    }
}

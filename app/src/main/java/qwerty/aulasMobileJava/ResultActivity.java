package qwerty.aulasMobileJava;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;


import androidx.annotation.Nullable;

import java.util.Locale;

public class ResultActivity extends Activity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);
        Intent intent = getIntent();
        String precoGasolina = intent.getStringExtra(MainActivity.EXTRA_VALOR_UM);
        String precoEtanol = intent.getStringExtra(MainActivity.EXTRA_VALOR_DOIS);

        TextView resultadoView = findViewById(R.id.textoResultado);

        double precoGasolinaBack = Double.parseDouble(precoGasolina);
        double precoEtanolBack = Double.parseDouble(precoEtanol);
        double resultado = precoEtanolBack / precoGasolinaBack;

        if(resultado >= 0.7){
            resultadoView.setText("Abasteça com Gasolina! \nA razão é de " + resultado);
        } else {
            resultadoView.setText("Abasteça com Etanol! \nA razão é de " + String.format("%.2f", resultado));
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

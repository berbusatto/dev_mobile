package qwerty.aulasMobileJava;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;

public class MainActivity extends Activity {

    public static final String EXTRA_PRECO_GASOLINA = "PRECO_GASOLINA";
    public static final String EXTRA_PRECO_ETANOL = "PRECO_ETANOL";

    public static final String EXTRA_CONSUMO_GASOLINA = "CONSUMO_GASOLINA";
    public static final String EXTRA_CONSUMO_ETANOL = "CONSUMO_ETANOL";


    private Button botaoCalcular;
    private EditText precoGasolina;
    private EditText precoEtanol;
    private EditText consumoGasolina;
    private EditText consumoEtanol;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState){
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main); // classe R é de resources, pasta res

        precoGasolina = findViewById(R.id.precoGasolina);
        precoEtanol = findViewById(R.id.precoEtanol);
        consumoGasolina = findViewById(R.id.consumoGasolina);
        consumoEtanol = findViewById(R.id.consumoEtanol);
        botaoCalcular = findViewById(R.id.botaoCalcular);

        botaoCalcular.setOnClickListener((new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeToResultScreen();
            }
        }));
    }

    private void changeToResultScreen() {
        Intent intent = new Intent(this, ResultActivity.class);

        // INTENT É QUEM TRANSPORTA OS DADOS
        // PARAMETROS DO INTENT(TELA ORIGEM, TELA DESTINO)
        EditText precoGasolina = (EditText) findViewById(R.id.precoGasolina);
        EditText precoEtanol = (EditText) findViewById(R.id.precoEtanol);
        EditText consumoGasolina = (EditText) findViewById(R.id.consumoGasolina);
        EditText consumoEtanol = (EditText) findViewById(R.id.consumoEtanol);

        intent.putExtra(EXTRA_PRECO_GASOLINA, precoGasolina.getText().toString());
        intent.putExtra(EXTRA_PRECO_ETANOL, precoEtanol.getText().toString());
        intent.putExtra(EXTRA_CONSUMO_GASOLINA, consumoGasolina.getText().toString());
        intent.putExtra(EXTRA_CONSUMO_ETANOL, consumoEtanol.getText().toString());

        startActivity(intent);
    }
}

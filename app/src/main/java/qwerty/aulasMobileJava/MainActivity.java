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

    public static final String EXTRA_VALOR_UM = "VALOR_UM";
    public static final String EXTRA_VALOR_DOIS = "VALOR_DOIS";

    private Button botaoCalcular;
    private EditText precoGasolina;
    private EditText precoEtanol;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState){
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main); // classe R é de resources, pasta res

        precoGasolina = findViewById(R.id.precoGasolina);
        precoEtanol = findViewById(R.id.precoEtanol);
        botaoCalcular = findViewById(R.id.botaoCalcular);

        botaoCalcular.setOnClickListener((new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                changeToResultScreen();
            }
        }));
    }

    private void changeToResultScreen() {
        Intent intent = new Intent(this, ResultActivity.class); // INTENT É QUEM TRANSPORTA OS DADOS
        // PARAMETROS DO INTENT(TELA ORIGEM, TELA DESTINO)
        EditText precoGasolina = (EditText) findViewById(R.id.precoGasolina);
        EditText precoEtanol = (EditText) findViewById(R.id.precoEtanol);

        intent.putExtra(EXTRA_VALOR_UM, precoGasolina.getText().toString());
        intent.putExtra(EXTRA_VALOR_DOIS, precoEtanol.getText().toString());
        startActivity(intent);


    }
}

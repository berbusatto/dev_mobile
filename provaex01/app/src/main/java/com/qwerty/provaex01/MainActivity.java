package com.qwerty.provaex01;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.util.Random;

public class MainActivity extends AppCompatActivity {

    int number;
    String message = "";


    public void randomNumberGenerator(){
        Random rand = new Random();
        number = rand.nextInt(99) + 1;
    }
    public void guess(View view){
        EditText guess = (EditText) findViewById(R.id.guess);
        int guessInt = Integer.parseInt(guess.getText().toString());
        if(guessInt > number && guessInt < number + 5) {
            message = "Um pouco menos";
        }else if(guessInt < number && guessInt > number - 5){
            message = "Um pouco mais";
        }else if(number > guessInt){
            message = "Mais";
        }else if(number < guessInt){
            message = "Menos";
        }else if(number == guessInt){
            message = "Acertou! Jogue novamente!";
            randomNumberGenerator();
        }


        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().hide();

    }
}
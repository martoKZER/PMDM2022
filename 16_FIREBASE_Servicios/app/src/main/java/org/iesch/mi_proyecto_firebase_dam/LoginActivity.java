package org.iesch.mi_proyecto_firebase_dam;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

enum ProviderType {
    BASIC
}
public class LoginActivity extends AppCompatActivity {

    EditText etEmail, etPassword;
    Button btnRegistrar, btnLogin;
    LinearLayout authLayout;

    private FirebaseAnalytics mFirebaseAnalytics;
    // 1
    private FirebaseAuth mAuth;

    @Override
    protected void onStart() {
        super.onStart();
        // Check if user is signed in (non-null) and update UI accordingly.
        FirebaseUser currentUser = mAuth.getCurrentUser();
        // Si el usuario está logueado (!= nulo) iremos a HomeActivity
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        setTitle("Login Firebase");
        etEmail = findViewById(R.id.emailEditText);
        etPassword = findViewById(R.id.passwordEditText);
        btnRegistrar = findViewById(R.id.registerButton);
        btnLogin = findViewById(R.id.loginButton);
        // 2
        iniciarAnalytics();
        // Initialize Firebase Auth
        iniciarAuthentication();
        //Comprobamos si tenemosla sesion abierta
        comprobarSiEstaLogueado();

    }

    private void comprobarSiEstaLogueado() {
        SharedPreferences sesion = getSharedPreferences("sesion", Context.MODE_PRIVATE);
        String _email = sesion.getString("email", null);
        String _metodo = sesion.getString("metodo", null);
        if(_email != null && _metodo != null){
            irAHomeActivity(_email, ProviderType.valueOf(_metodo));
        }
    }

    private void iniciarAuthentication() {
        mAuth = FirebaseAuth.getInstance();
        btnRegistrar.setOnClickListener(v -> {
            registrarConEmailPassword();
        });
        btnLogin.setOnClickListener(v -> {
            loguearConEmailyPassword();
        });
    }

    private void loguearConEmailyPassword() {
        String _email = etEmail.getText().toString();
        String _password = etPassword.getText().toString();

        mAuth.signInWithEmailAndPassword(_email, _password)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            // Sign in success, update UI with the signed-in user's information
                            Log.d("FIREBASE", "signInWithEmail:success");
                            FirebaseUser user = mAuth.getCurrentUser();
                            // En caso de usuario y password correctos pasaremos a HomeActivity
                            irAHomeActivity(_email, ProviderType.BASIC);
                        } else {
                            // If sign in fails, display a message to the user.
                            Log.w("FIREBASE", "signInWithEmail:failure", task.getException());
                            Toast.makeText(LoginActivity.this, "Error al Loguaerse el usuario",
                                    Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }

    private void irAHomeActivity(String email, ProviderType tipoLogueo) {
        Intent i = new Intent(LoginActivity.this,HomeActivity.class);
        i.putExtra("email",email);
        i.putExtra("metodo",tipoLogueo.toString());
        startActivity(i);
    }

    private void iniciarAnalytics() {
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
        Bundle bundle = new Bundle();
        bundle.putString("DAM2","Aplicacion Iniciada");
        mFirebaseAnalytics.logEvent("DAM2", bundle);
    }

    // REGISTRARÁ USUARIOS EN FIREBASE CON EMAIL/PASSWORD
    private void registrarConEmailPassword() {
        String _email = etEmail.getText().toString();
        String _password = etPassword.getText().toString();

        mAuth.createUserWithEmailAndPassword(_email, _password)
                .addOnCompleteListener(this, new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            // Sign in success, update UI with the signed-in user's information
                            Log.d("FIREBASE", "createUserWithEmail:success");
                            FirebaseUser user = mAuth.getCurrentUser();
                            Toast.makeText(LoginActivity.this, "El Usuario se ha registrado correctamente", Toast.LENGTH_SHORT).show();
                        } else {
                            // If sign in fails, display a message to the user.
                            Log.w("FIREBASE", "createUserWithEmail:failure", task.getException());
                            Toast.makeText(LoginActivity.this, "Error al Registrar el Usuario",
                                    Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }
}
package com.dayeeen.auth

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.dayeeen.auth.ui.onboarding.GetstartedScreen
import com.dayeeen.auth.ui.signin.SigninScreen
import com.dayeeen.auth.ui.signup.SignupScreen
import com.dayeeen.ui.theme.BatikaraTheme

class MainActivity : ComponentActivity() {

    sealed class Screen(val route: String) {
        object ObGetStarted : Screen("onboarding/getstarted")
        object AuthSignin : Screen("auth/signin")
        object AuthSignup : Screen("auth/signup")

    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            BatikaraTheme {
                val navController = rememberNavController()
                NavHost(
                    navController = navController,
                    startDestination = Screen.ObGetStarted.route,
                ) {
                    composable(Screen.ObGetStarted.route) {
                        GetstartedScreen(
                            navController = navController
                        )
                    }
                    composable(Screen.AuthSignin.route) {
                        SigninScreen(
                            navController = navController
                        )
                    }
                    composable(Screen.AuthSignup.route) {
                        SignupScreen(
                            navController = navController
                        )
                    }
                    // Add more composable destinations as needed
                }
            }
        }
    }
}
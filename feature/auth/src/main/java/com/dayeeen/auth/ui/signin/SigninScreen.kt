package com.dayeeen.auth.ui.signin

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.systemBars
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.Card
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.layout
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Devices
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import com.dayeeen.auth.MainActivity.Screen
import com.dayeeen.ui.R
import com.dayeeen.ui.components.BatikaraButtonPrimary
import com.dayeeen.ui.components.BatikaraButtonSocialRow
import com.dayeeen.ui.components.BatikaraEditText
import com.dayeeen.ui.components.BatikaraImageViewClick
import com.dayeeen.ui.components.BatikaraTextHeader
import com.dayeeen.ui.components.BatikaraTextLabel
import com.dayeeen.ui.components.BatikaraTextRegular
import com.dayeeen.ui.components.BatikaraTextRegularWithClick
import com.dayeeen.ui.components.BatikaraTextViewRow
import com.dayeeen.ui.theme.transparent
import com.dayeeen.ui.theme.white

@Composable
fun SigninScreen(
    navController: NavController = rememberNavController()
) {
    Box(
        modifier = Modifier
            .fillMaxSize()
            .windowInsetsPadding(WindowInsets.systemBars) // Add this line
    ) {
        // Background layer
        androidx.compose.foundation.Image(
            painter = painterResource(id = R.drawable.bg_login), // Replace with your background resource
            contentDescription = null,
            modifier = Modifier
                .fillMaxWidth(),
            contentScale = androidx.compose.ui.layout.ContentScale.Crop,

        )
        BatikaraImageViewClick(
            color = white,
            drawableRes = R.drawable.arrow_back,
            onClick = {
                navController.popBackStack() // Navigate back to the previous screen
            }
        )
        // Foreground content with white background and rounded corners
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .align(Alignment.BottomCenter),
            shape = androidx.compose.foundation.shape.RoundedCornerShape(
                topStart = 36.dp,
                topEnd = 36.dp,
                bottomStart = 0.dp,
                bottomEnd = 0.dp
            ),
            colors = androidx.compose.material3.CardDefaults.cardColors(
                containerColor = white
            ),
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(24.dp, 28.dp)
                ,
                horizontalAlignment = Alignment.Start


            ) {
                BatikaraTextHeader()
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegular(
                    text = "Reconnect with your saved items, AI recommendations, and your favorite local brands."
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextLabel(
                    text = "Email",
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraEditText(
                    value = "Enter your email",
                )
                Spacer(modifier = Modifier.height(16.dp))
                BatikaraTextLabel(
                    text = "Password",
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraEditText(
                    value = "Enter your password",
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextViewRow()
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraButtonPrimary(
                    text = "LOGIN",
                    onClick = { /* Handle login click */ },
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegular(
                    text = "Or continue with",
                    color = transparent,
                    modifier = Modifier
                        .fillMaxWidth(),
                    txtAlign = TextAlign.Center
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraButtonSocialRow(
                    onClickGoogle = {},
                    onClickFesnuk = {},
                    onClickApple = {},
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegularWithClick(
                    modifier = Modifier.fillMaxWidth(),
                    textAlign = TextAlign.Center,
                    onClick = {
                        navController.navigate(Screen.AuthSignup.route) // Navigate to signup screen
                    },
                )
            }
        }

    }

}

@Preview(
    device = Devices.PIXEL_7
)
@Composable
fun SigninScreenPreview(

) {
    SigninScreen()
}
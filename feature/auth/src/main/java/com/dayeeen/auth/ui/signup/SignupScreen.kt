package com.dayeeen.auth.ui.signup

import androidx.compose.foundation.Image
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
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.layout
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Devices
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.dayeeen.ui.R
import com.dayeeen.ui.components.BatikaraButtonPrimary
import com.dayeeen.ui.components.BatikaraButtonSocialRow
import com.dayeeen.ui.components.BatikaraEditText
import com.dayeeen.ui.components.BatikaraTextHeader
import com.dayeeen.ui.components.BatikaraTextLabel
import com.dayeeen.ui.components.BatikaraTextRegular
import com.dayeeen.ui.components.BatikaraTextRegularWithClick
import com.dayeeen.ui.components.BatikaraTextViewRow
import com.dayeeen.ui.theme.transparent
import com.dayeeen.ui.theme.white

@Composable
fun SignupScreen(

) {
    Box(
        modifier = Modifier
            .fillMaxSize()
        ) {
        // Background layer
        Image(
            painter = painterResource(id = R.drawable.bg_login), // Replace with your background resource
            contentDescription = null,
            modifier = Modifier
                .fillMaxWidth(),
            contentScale = ContentScale.Crop,

        )
        // Foreground content with white background and rounded corners
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .align(Alignment.BottomCenter),
            shape = RoundedCornerShape(
                topStart = 36.dp,
                topEnd = 36.dp,
                bottomStart = 0.dp,
                bottomEnd = 0.dp
            ),
            colors = CardDefaults.cardColors(
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
                BatikaraTextHeader(
                    text = "Create Your Batikara Account"
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegular(
                    text = "Join a movement to support local artisans and find batik pieces that match your unique style."
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
                Spacer(modifier = Modifier.height(16.dp))
                BatikaraTextLabel(
                    text = "Confirm Password",
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraEditText(
                    value = "Re-enter your password",
                )
                Spacer(modifier = Modifier.height(24.dp))
                BatikaraButtonPrimary(
                    "REGISTER",
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegularWithClick(
                    text = "Already have an account? ",
                    textClick = "Sign In here",
                    onClick = { /* Handle click */ },
                    modifier = Modifier.fillMaxWidth(),
                    textAlign = TextAlign.Center,
                )
            }
        }

    }

}

@Preview(
    device = Devices.PIXEL_7
)
@Composable
fun SignupScreenPreview(

) {
    SignupScreen()
}
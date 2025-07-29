package com.dayeeen.auth.ui.onboarding

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxHeight
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
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import com.dayeeen.auth.MainActivity.Screen
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
fun GetstartedScreen(
    navController: NavController = rememberNavController()
) {
    Box(
        modifier = Modifier
            .fillMaxSize()
        ) {
        // Background layer
        Image(
            painter = painterResource(id = R.drawable.bg_onboarding), // Replace with your background resource
            contentDescription = null,
            modifier = Modifier
                .fillMaxHeight(),
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
                    text = "Welcome to Batikara"
                )
                Spacer(modifier = Modifier.height(12.dp))
                BatikaraTextRegular(
                    text = "Discover how tradition meets technology.\nLet Batikara help you find your perfect batik style, fit, and story—powered by AI, rooted in culture."
                )
                Spacer(modifier = Modifier.height(36.dp))
                BatikaraButtonPrimary(
                    text = "GET STARTED",
                    onClick = {
                        navController.navigate(Screen.AuthSignin.route)
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
    GetstartedScreen()
}
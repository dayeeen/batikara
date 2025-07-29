package com.dayeeen.ui.components

import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonColors
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.dayeeen.ui.R
import com.dayeeen.ui.theme.brown
import com.dayeeen.ui.theme.brownLight
import com.dayeeen.ui.theme.white

@Composable
fun BatikaraBaseButton(
    modifier: Modifier = Modifier,
    text: String = "Default Text",
    onClick: () -> Unit = { /* Default action */ },
    enabled: Boolean = true,
    shape: Shape = RoundedCornerShape(12.dp), // Default shape for the button
    color: ButtonColors = ButtonDefaults.buttonColors(
        containerColor = brownLight, // Default color for the button
        contentColor = white // Default text color
        )
    ){
    Button(
        modifier = modifier,
        onClick = { onClick() },
        enabled = enabled,
        shape = shape,
        colors = color,


    ) {
        // Content of the button can be added here
        // For example, you can add a Text composable inside the Button
         Text(
             text = text,
             fontWeight = FontWeight.Bold
         )
    }
}

@Composable
fun BatikaraIconBaseButton(
    modifier: Modifier = Modifier,
    onClick: () -> Unit = { /* Default action */ },
    enabled: Boolean = true,
    color: ButtonColors = ButtonDefaults.buttonColors(
        containerColor = Color.Transparent, // No background
    ),
    srcIcon: Int = R.drawable.ic_google,
    descIcon: String = "description",

){
    Button(
        modifier = modifier,
        onClick = { onClick() },
        enabled = enabled,
        colors = color
    ) {
        Icon(
            painter = painterResource(id = srcIcon),
            modifier = Modifier.size(24.dp), // Set icon size
            contentDescription = "Fesnuk",
            tint = Color.Unspecified
        )
    }
}

@Preview
@Composable
fun BatikaraBaseButtonPreview() {
    BatikaraBaseButton()
}

@Preview
@Composable
fun BatikaraIconBaseButtonPreview() {
    BatikaraIconBaseButton()
}
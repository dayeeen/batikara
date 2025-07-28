package com.dayeeen.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.ButtonDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.dayeeen.ui.R
import com.dayeeen.ui.theme.brown
import com.dayeeen.ui.theme.brownLight
import com.dayeeen.ui.theme.white

@Composable
fun BatikaraButtonPrimary(
    text: String = "Login",
    onClick: () -> Unit = { /* Default action */ },
){
    BatikaraBaseButton(
        text = text,
        onClick = onClick,
        enabled = true,
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 10.dp, vertical = 12.dp) // Padding for the button
            .height(44.dp)
        ,
        color = ButtonDefaults.buttonColors(
            containerColor = brownLight, // Primary color for the button
            contentColor = white // Text color for the button
        ),
    )
}

@Composable
fun BatikaraButtonFesnuk(
    onClick: () -> Unit = { /* Default action */ },
    modifier: Modifier = Modifier

){
    BatikaraIconBaseButton(
        onClick = onClick,
        enabled = true,
        srcIcon = R.drawable.ic_fesnuk,
        descIcon = "Facebook",
    )
}

@Composable
fun BatikaraButtonGoogle(
    onClick: () -> Unit = { /* Default action */ },
    modifier: Modifier = Modifier

){
    BatikaraIconBaseButton(
        onClick = onClick,
        enabled = true,
        modifier = Modifier,
        srcIcon = R.drawable.ic_google,
        descIcon = "Google",
    )
}

@Composable
fun BatikaraButtonApple(
    onClick: () -> Unit = { /* Default action */ },
    modifier: Modifier = Modifier
){
    BatikaraIconBaseButton(
        onClick = onClick,
        enabled = true,
        modifier = Modifier,
        srcIcon = R.drawable.ic_apple,
        descIcon = "Apple",
    )
}

@Preview
@Composable
fun BatikaraButtonPrimaryPreview() {
    BatikaraButtonPrimary()
}

@Preview
@Composable
fun BatikaraButtonFesnukPreview() {
    BatikaraButtonFesnuk()
}

@Preview
@Composable
fun BatikaraButtonGooglePreview() {
    BatikaraButtonGoogle()
}

@Preview
@Composable
fun BatikaraButtonApplePreview() {
    BatikaraButtonApple()
}

@Composable
fun BatikaraButtonSocialRow(
    modifier: Modifier = Modifier
        .fillMaxWidth(),

    onClickGoogle: () -> Unit = { /* Default action */ },
    onClickApple: () -> Unit = { /* Default action */ },
    onClickFesnuk: () -> Unit = { /* Default action */ }
){
    Row (
        modifier = modifier,
        horizontalArrangement = Arrangement.spacedBy(26.dp, Alignment.CenterHorizontally)

    ) {
        BatikaraButtonApple(
            modifier = modifier.weight(1f),
            onClick = onClickApple
        )
        BatikaraButtonGoogle(
            modifier = modifier.weight(1f),
            onClick = onClickGoogle
            )
        BatikaraButtonFesnuk(
            modifier = modifier.weight(1f),
            onClick = onClickFesnuk
            )
    }
}


@Preview(showBackground = true, showSystemUi = true, )
@Composable
fun BatikaraButtonSocialRowPreview() {
    BatikaraButtonSocialRow()
}
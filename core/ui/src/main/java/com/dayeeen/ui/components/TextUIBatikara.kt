package com.dayeeen.ui.components

import android.R
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.ClickableText
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.colorResource
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.dayeeen.ui.theme.brown
import com.dayeeen.ui.theme.transparent

@Composable
fun BatikaraTextHeader(
    text: String = "Good to see you again",
    color: Color = brown,
    modifier: Modifier = Modifier.padding(bottom = 16.dp)
){
    Text(
        text = text,
        modifier = modifier,
        style = TextStyle(
            fontSize = 20.sp,
            lineHeight = 20.sp,
            fontWeight = FontWeight.Bold,
            color = color,
            textAlign = TextAlign.Left
        ),
        overflow = TextOverflow.Ellipsis,
        color = color,
        maxLines = 1
    )
}

@Preview
@Composable
fun BatikaraTextHeaderPreview() {
    BatikaraTextHeader()
}

@Composable
fun BatikaraTextRegularWithClick(
    text: String = "Don’t have an account? ",
    textClick: String = "Sign Up here",
    onClick: () -> Unit = {},
    modifier: Modifier = Modifier.padding(top = 6.dp, bottom = 6.dp)
){

    val annotatedText = buildAnnotatedString {
        append(text)

        pushStringAnnotation(
            tag = "text_click",
            annotation = textClick
        )
        withStyle(
            style = SpanStyle(
                color = brown,
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold
            )
        ) {
            append(textClick)
        }
        pop() // Pop the annotation to avoid affecting subsequent text

    }

    ClickableText(
        text = annotatedText,
        modifier = modifier,
        style = TextStyle(
            fontSize = 12.sp,
            lineHeight = 18.sp,
            textAlign = TextAlign.Center,
            color = transparent
        ),
        onClick = { offset ->
            annotatedText.getStringAnnotations(
                tag = "text_click",
                start = offset,
                end = offset
            ).firstOrNull()?.let {
                onClick()
            }
        }
    )
}

@Preview
@Composable
fun BatikaraTextRegularWithClickPreview() {
    BatikaraTextRegularWithClick()
}

@Composable
fun BatikaraTextRegular(
    text: String = "Email",
    modifier: Modifier = Modifier.padding(16.dp),
    color: Color = brown,
) {
    Text(
        text = text,
        modifier = modifier,
        style = TextStyle(
            fontSize = 12.sp,
            lineHeight = 14.sp,
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Left
        ),
        color = color,
        )
}

@Preview
@Composable
fun BatikaraTextRegularPreview() {
    BatikaraTextRegular()
}
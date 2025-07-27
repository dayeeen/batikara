package com.dayeeen.ui.components

import androidx.compose.foundation.border
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.dayeeen.ui.theme.brown

@Composable
fun BatikaraEditText(
    value: String = "Enter your email",
    onTyping: (String) -> Unit = { },
    visualTransformation: VisualTransformation = VisualTransformation.None,
    keyboardOptions: KeyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Text)
) {
    BasicTextField(
        value = value,
        onValueChange = {onTyping.invoke(it)},
        modifier = Modifier.fillMaxWidth()
            .border(width = 1.dp, color = brown, shape = RoundedCornerShape(12.dp))
            .padding(horizontal = 20.dp, vertical = 15.dp),
        textStyle = TextStyle(
            fontSize = 12.sp,
            lineHeight = 16.sp,
            color = brown,
            fontWeight = FontWeight.Normal
        ),
        visualTransformation = visualTransformation
    )
}

@Preview
@Composable
fun BatikaraEditTextPreview() {
    BatikaraEditText()
}

@Preview
@Composable
fun BatikaraEditTextPasswordPreview() {
    BatikaraEditText(visualTransformation = PasswordVisualTransformation())
}
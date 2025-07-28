package com.dayeeen.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CheckboxDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.dayeeen.ui.theme.brown
import com.dayeeen.ui.theme.brownLight
import com.dayeeen.ui.theme.white

@Composable
fun BatikaraCheckbox(
    modifier: Modifier = Modifier,
    label: String = "Remember me",
    checked: Boolean = false,
    onCheckedChange: (Boolean) -> Unit = {},
){
    Row(
        modifier = modifier,
        horizontalArrangement = Arrangement.Start,
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Checkbox(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = CheckboxDefaults.colors(
                checkedColor = brown,
                uncheckedColor = brown,
                checkmarkColor = white
            )
        )
        Text(
            text = label,
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f) // Ensures text takes up remaining space
            ,
            style = TextStyle(
                color = brown,
                fontSize = 12.sp,
                lineHeight = 20.sp
            )
        )
    }
}

@Preview
@Composable
fun BatikaraCheckboxPreview() {
    BatikaraCheckbox()
}
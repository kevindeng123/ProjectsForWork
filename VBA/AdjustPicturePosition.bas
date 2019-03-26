Attribute VB_Name = "AdjustPicturePosition"
Sub AdjustPicturePosition()

Const ScaleValue As Variant = 28.345

Set mySelection = ActiveWindow.Selection

With mySelection.ShapeRange.PictureFormat.Crop

    .ShapeWidth = sw
    .ShapeHeight = sh
    .ShapeLeft = sl
    .ShapeTop = st
    .PictureWidth = pw
    .PictureHeight = ph
    .PictureOffsetX = px
    .PictureOffsetY = py

End With

End Sub

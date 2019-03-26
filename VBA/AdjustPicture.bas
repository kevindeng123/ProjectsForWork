Sub AdjustPicture()

Const ScaleValue As Variant = 28.345
Dim sw, sh, sl, st, pw, ph, px, py As Variant
Let sw = 42.01
Let sh = 27.02
Let sl = 0
Let st = 2.68
Let pw = 45.53
Let ph = 32.16
Let px = 0
Let py = 1.25

Set mySelection = ActiveWindow.Selection

With mySelection.ShapeRange.PictureFormat.Crop

    .ShapeWidth = sw * ScaleValue
    .ShapeHeight = 27.02 * ScaleValue
    .ShapeLeft = 0 * ScaleValue
    .ShapeTop = 2.68 * ScaleValue
    .PictureWidth = 45.53 * ScaleValue
    .PictureHeight = 32.16 * ScaleValue
    .PictureOffsetX = 0 * ScaleValue
    .PictureOffsetY = 1.25 * ScaleValue

End With

End Sub

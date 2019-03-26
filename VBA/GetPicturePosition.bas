Attribute VB_Name = "GetPicturePosition"
Public sw, sh, sl, st, pw, ph, px, py As Variant

Sub GetPicturePosition()

Set mySelection = ActiveWindow.Selection.ShapeRange.PictureFormat.Crop

Let sw = mySelection.ShapeWidth
Let sh = mySelection.ShapeHeight
Let sl = mySelection.ShapeLeft
Let st = mySelection.ShapeTop
Let pw = mySelection.PictureWidth
Let ph = mySelection.PictureHeight
Let px = mySelection.PictureOffsetX
Let py = mySelection.PictureOffsetY

End Sub

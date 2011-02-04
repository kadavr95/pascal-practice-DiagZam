object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 601
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edta: TEdit
    Left = 8
    Top = 576
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edta'
  end
  object edtb: TEdit
    Left = 135
    Top = 576
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtb'
  end
  object btn: TButton
    Left = 262
    Top = 574
    Width = 75
    Height = 25
    Caption = 'btn'
    TabOrder = 2
    OnClick = btnClick
  end
  object sgd1: TStringGrid
    Left = 8
    Top = 8
    Width = 739
    Height = 257
    FixedCols = 0
    FixedRows = 0
    TabOrder = 3
  end
  object sgd2: TStringGrid
    Left = 8
    Top = 271
    Width = 739
    Height = 274
    FixedCols = 0
    FixedRows = 0
    TabOrder = 4
  end
end

object frmSort: TfrmSort
  Left = 0
  Top = 0
  Caption = 'frmSort'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnDisplay: TButton
    Left = 264
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Display'
    TabOrder = 0
    OnClick = btnDisplayClick
  end
  object redOutput: TRichEdit
    Left = 112
    Top = 120
    Width = 369
    Height = 242
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end

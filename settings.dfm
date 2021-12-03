object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  Caption = 'Settings'
  ClientHeight = 464
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CardPanel1: TCardPanel
    Left = 200
    Top = 0
    Width = 496
    Height = 464
    Align = alClient
    ActiveCard = Card1
    BevelOuter = bvNone
    Caption = 'CardPanel1'
    TabOrder = 0
    object Card1: TCard
      Left = 0
      Top = 0
      Width = 496
      Height = 464
      Caption = 'Card1'
      CardIndex = 0
      TabOrder = 0
      object Label2: TLabel
        Left = 32
        Top = 26
        Width = 54
        Height = 23
        Caption = 'Videos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object rkView1: TrkView
        Left = 6
        Top = 72
        Width = 475
        Height = 345
        ShowHint = True
        TabOrder = 0
        HotTracking = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        CellSelect = True
        Columns = ''
        ColorSel = 14120960
      end
    end
    object Card2: TCard
      Left = 0
      Top = 0
      Width = 496
      Height = 464
      Caption = 'Card2'
      CardIndex = 1
      TabOrder = 1
      object Label1: TLabel
        Left = 24
        Top = 18
        Width = 206
        Height = 23
        Caption = 'Player (preferred player)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RadioGroup1: TRadioGroup
        Left = 24
        Top = 47
        Width = 433
        Height = 89
        Caption = 'Select the preferred video player'
        Items.Strings = (
          'Videolan (VLC)'
          'APlayer'
          'MPV')
        TabOrder = 0
      end
    end
    object Card3: TCard
      Left = 0
      Top = 0
      Width = 496
      Height = 464
      Caption = 'Card3'
      CardIndex = 2
      TabOrder = 2
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 464
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
    object UWPListButton1: TUWPListButton
      Left = 0
      Top = 0
      Width = 200
      Height = 41
      Align = alTop
      Caption = 'Videos'
      TabOrder = 0
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -16
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 8947848
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #57618
      Detail = 'Detail'
    end
    object UWPListButton2: TUWPListButton
      Left = 0
      Top = 423
      Width = 200
      Height = 41
      Align = alBottom
      Caption = 'About'
      TabOrder = 1
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -16
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 8947848
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #57618
      Detail = 'Detail'
    end
    object UWPListButton3: TUWPListButton
      Left = 0
      Top = 41
      Width = 200
      Height = 41
      Align = alTop
      Caption = 'Player'
      TabOrder = 2
      IconFont.Charset = DEFAULT_CHARSET
      IconFont.Color = clWindowText
      IconFont.Height = -16
      IconFont.Name = 'Segoe MDL2 Assets'
      IconFont.Style = []
      CustomBackColor.Enabled = False
      CustomBackColor.LightNone = 15132390
      CustomBackColor.LightHover = 13619151
      CustomBackColor.LightPress = 8947848
      CustomBackColor.LightSelectedNone = 127
      CustomBackColor.LightSelectedHover = 103
      CustomBackColor.LightSelectedPress = 89
      CustomBackColor.DarkNone = 2039583
      CustomBackColor.DarkHover = 3487029
      CustomBackColor.DarkPress = 5000268
      CustomBackColor.DarkSelectedNone = 89
      CustomBackColor.DarkSelectedHover = 103
      CustomBackColor.DarkSelectedPress = 127
      FontIcon = #57618
      Detail = 'Detail'
    end
  end
end

object frmDeskPlay: TfrmDeskPlay
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsNone
  Caption = 'DeskPlay'
  ClientHeight = 442
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PasLibVlcPlayer1: TPasLibVlcPlayer
    Left = 0
    Top = 0
    Width = 721
    Height = 442
    Align = alClient
    SnapShotFmt = 'png'
    MouseEventsHandler = mehComponent
    object ListBox1: TListBox
      Left = 40
      Top = 48
      Width = 281
      Height = 281
      ItemHeight = 13
      TabOrder = 0
      Visible = False
    end
  end
  object TrayIcon1: TTrayIcon
    PopupMenu = PopupMenu1
    Visible = True
    Left = 344
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 160
    object NewURL1: TMenuItem
      Caption = 'New URL'
      OnClick = NewURL1Click
    end
    object Sound1: TMenuItem
      Caption = 'Sound'
      OnClick = Sound1Click
    end
    object ransparentcurrentwindow1: TMenuItem
      Caption = 'Transparent Window'
      object N101: TMenuItem
        Tag = 25
        Caption = '10%'
        OnClick = N101Click
      end
      object N501: TMenuItem
        Tag = 127
        Caption = '50%'
        OnClick = N501Click
      end
      object N751: TMenuItem
        Tag = 191
        Caption = '75%'
        OnClick = N751Click
      end
      object N1001: TMenuItem
        Tag = 255
        Caption = '100%'
        OnClick = N1001Click
      end
      object NoTransparente1: TMenuItem
        Caption = 'Opaque'
        OnClick = NoTransparente1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Desconectar1: TMenuItem
      Caption = 'Disconnect'
      OnClick = Desconectar1Click
    end
    object Salir1: TMenuItem
      Caption = 'E&xit'
      OnClick = Salir1Click
    end
  end
end

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
  OnCreate = FormCreate
  TextHeight = 13
  object PasLibVlcPlayer1: TPasLibVlcPlayer
    Left = 0
    Top = 0
    Width = 721
    Height = 442
    Align = alClient
    SnapShotFmt = 'png'
    OnMediaPlayerEndReached = PasLibVlcPlayer1MediaPlayerEndReached
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
    Left = 424
    Top = 192
    object mnuNewURL: TMenuItem
      Caption = 'New URL'
      OnClick = mnuNewURLClick
    end
    object VideoToLoop1: TMenuItem
      Caption = 'Video To Loop'
      OnClick = VideoToLoop1Click
    end
    object mnuSound: TMenuItem
      Caption = 'Sound'
      OnClick = mnuSoundClick
    end
    object Transparentcurrentwindow: TMenuItem
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
    object Settings1: TMenuItem
      Caption = 'Settings'
      OnClick = Settings1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuDisconnect: TMenuItem
      Caption = 'Disconnect'
      OnClick = mnuDisconnectClick
    end
    object mnuExit: TMenuItem
      Caption = 'E&xit'
      OnClick = mnuExitClick
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'MP4'
        FileMask = '*.mp4'
      end
      item
        DisplayName = 'All Files'
        FileMask = '*.*'
      end>
    Options = []
    Left = 536
    Top = 104
  end
end

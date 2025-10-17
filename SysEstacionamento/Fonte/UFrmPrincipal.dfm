object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Controle de Ticket de Estacionamento'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnmPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mnmPrincipal: TMainMenu
    Left = 128
    Top = 72
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Condutor1: TMenuItem
        Caption = 'Condutor...'
        OnClick = EvAtivaCadastroCondutorOnClick
      end
      object Condutor2: TMenuItem
        Caption = 'Montadora...'
        OnClick = EvAtivarCadastroMontadoraOnClick
      end
      object Modelo1: TMenuItem
        Caption = 'Modelo...'
        OnClick = EvAtivarCadastroModeloOnClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Ve'#237'culo...'
        OnClick = EvAtivaCadastroVeiculoOnClick
      end
      object ipo1: TMenuItem
        Caption = 'Tipo...'
        OnClick = EvAtivarCadastroTipoOnClick
      end
      object ipo2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = EvEncerrarSistemaOnClick
      end
    end
    object Cadastro2: TMenuItem
      Caption = 'Processo'
      object icket1: TMenuItem
        Caption = 'Ticket...'
        ShortCut = 16468
        OnClick = EvAtivaCadastroTicketOnClick
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Veculo1: TMenuItem
        Caption = 'Ve'#237'culo...'
      end
    end
  end
end

inherited FrmCadastroTicket: TFrmCadastroTicket
  Caption = 'Ticket'
  ClientHeight = 509
  ClientWidth = 602
  ExplicitWidth = 608
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 19
  inherited tlbCadastroCRUD: TToolBar
    Top = 456
    Width = 602
  end
  object grbConducao: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 586
    Height = 137
    Caption = 'Condu'#231#227'o::.'
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 50
      Height = 19
      Caption = 'C'#243'digo'
      FocusControl = dbeCodigo
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 66
      Height = 19
      Caption = 'Condutor'
      FocusControl = dbeCondutor
    end
    object Label3: TLabel
      Left = 31
      Top = 97
      Width = 51
      Height = 19
      Caption = 'Ve'#237'culo'
      FocusControl = dbeVeiculo
    end
    object dbeCodigo: TDBEdit
      Left = 96
      Top = 21
      Width = 99
      Height = 27
      DataField = 'CND_COD'
      DataSource = dtsPrincipal
      TabOrder = 0
    end
    object dbeCondutor: TDBEdit
      Left = 96
      Top = 61
      Width = 99
      Height = 27
      DataField = 'CON_COD'
      DataSource = dtsPrincipal
      TabOrder = 1
    end
    object dbeVeiculo: TDBEdit
      Left = 96
      Top = 94
      Width = 99
      Height = 27
      DataField = 'VEI_COD'
      DataSource = dtsPrincipal
      TabOrder = 2
    end
    object dblkCondutor: TDBLookupComboBox
      Left = 214
      Top = 61
      Width = 349
      Height = 27
      DataField = 'CON_COD'
      DataSource = dtsPrincipal
      KeyField = 'CON_COD'
      ListField = 'CON_NOM'
      ListSource = dtsCondutorLK
      PopupMenu = ppmCondutor
      TabOrder = 3
    end
    object dblkVeiculo: TDBLookupComboBox
      Left = 214
      Top = 94
      Width = 349
      Height = 27
      DataField = 'VEI_COD'
      DataSource = dtsPrincipal
      KeyField = 'VEI_COD'
      ListField = 'VEI_PLA'
      ListSource = dtsVeiculoLK
      PopupMenu = ppmVeiculo
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 8
    Top = 208
    Width = 586
    Height = 209
    Caption = 'Ticket::.'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 21
      Width = 582
      Height = 186
      Align = alClient
      DataSource = dtsTicket
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnColEnter = EvGravarConducaoEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'TIC_NUM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CND_COD'
          Width = 2
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_DAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_HOR_ENT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_HOR_SAI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_VAL_PAG'
          Visible = True
        end>
    end
  end
  object btnHoraSaida: TBitBtn [3]
    Left = 352
    Top = 151
    Width = 219
    Height = 33
    Hint = 'Adicionar a hora corrente no ticket selecionado'
    Caption = '&Adicionar hora da sa'#237'da'
    Kind = bkRetry
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = EvAtribuitHoraCorrenteOnClick
  end
  inherited ImgAtiva: TImageList
    Left = 432
    Top = 16
  end
  inherited ImgDesativado: TImageList
    Left = 544
    Top = 16
  end
  inherited ImgQuente: TImageList
    Left = 488
    Top = 16
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryConducao
    Left = 264
    Top = 16
  end
  inherited aclCRUD: TActionList
    Top = 16
  end
  object dtsTicket: TDataSource
    DataSet = dtmEstacionamento.qryTicket
    Left = 464
    Top = 296
  end
  object dtsCondutorLK: TDataSource
    DataSet = qryCondutorLK
    Left = 64
    Top = 136
  end
  object qryCondutorLK: TFDQuery
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'select CON_COD, CON_NOM from CONDUTOR'
      'order by CON_NOM')
    Left = 136
    Top = 136
  end
  object qryVeiculoLK: TFDQuery
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'select VEI_COD, VEI_PLA from VEICULO'
      'order by VEI_PLA')
    Left = 288
    Top = 136
  end
  object dtsVeiculoLK: TDataSource
    DataSet = qryVeiculoLK
    Left = 216
    Top = 144
  end
  object ppmCondutor: TPopupMenu
    Left = 256
    Top = 72
    object AtualizarCondutor1: TMenuItem
      Caption = 'Atualizar Condutor'
      OnClick = EvAtualizarLookupClick
    end
  end
  object ppmVeiculo: TPopupMenu
    Left = 352
    Top = 104
    object AtualizeVeculo1: TMenuItem
      Caption = 'Atualize Ve'#237'culo'
      OnClick = EvAtualizarVeiculoLKClick
    end
  end
end

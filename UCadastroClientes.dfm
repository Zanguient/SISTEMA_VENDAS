inherited FormCadastroClientes: TFormCadastroClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 427
  ClientWidth = 764
  Position = poMainFormCenter
  ExplicitTop = -19
  ExplicitWidth = 770
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Width = 764
    Height = 398
    Caption = 'Cadastro de Clientes'
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 764
    ExplicitHeight = 398
    object Label2: TLabel [0]
      Left = 87
      Top = 31
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [1]
      Left = 9
      Top = 73
      Width = 112
      Height = 13
      Caption = 'DATA DE NASCIMENTO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [2]
      Left = 487
      Top = 31
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [3]
      Left = 161
      Top = 73
      Width = 21
      Height = 13
      Caption = 'DDD'
      FocusControl = DBEdit5
    end
    object Label6: TLabel [4]
      Left = 210
      Top = 73
      Width = 50
      Height = 13
      Caption = 'TELEFONE'
      FocusControl = DBEdit6
    end
    object Label7: TLabel [5]
      Left = 358
      Top = 73
      Width = 30
      Height = 13
      Caption = 'EMAIL'
    end
    object Label8: TLabel [6]
      Left = 9
      Top = 122
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit8
    end
    object Label9: TLabel [7]
      Left = 9
      Top = 162
      Width = 38
      Height = 13
      Caption = 'CIDADE'
      FocusControl = DBEdit9
    end
    object Label10: TLabel [8]
      Left = 9
      Top = 202
      Width = 39
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = DBEdit10
    end
    object Label11: TLabel [9]
      Left = 237
      Top = 122
      Width = 21
      Height = 13
      Caption = 'RUA'
    end
    object Label12: TLabel [10]
      Left = 237
      Top = 162
      Width = 75
      Height = 13
      Caption = 'COMPLEMENTO'
      FocusControl = DBEdit12
    end
    object Label13: TLabel [11]
      Left = 237
      Top = 202
      Width = 43
      Height = 13
      Caption = 'NUMERO'
      FocusControl = DBEdit13
    end
    object Label1: TLabel [12]
      Left = 9
      Top = 31
      Width = 41
      Height = 15
      Caption = 'CLIENTE'
      FocusControl = DBEdit1
    end
    object DBEdit2: TDBEdit [13]
      Left = 87
      Top = 46
      Width = 394
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEdit3: TDBEdit [14]
      Left = 9
      Top = 89
      Width = 134
      Height = 21
      DataField = 'DATA_NASCIMENTO'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBEdit4: TDBEdit [15]
      Left = 487
      Top = 46
      Width = 147
      Height = 21
      DataField = 'CPF'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit5: TDBEdit [16]
      Left = 161
      Top = 89
      Width = 43
      Height = 21
      DataField = 'DDD'
      DataSource = DataSource
      TabOrder = 3
    end
    object DBEdit6: TDBEdit [17]
      Left = 210
      Top = 89
      Width = 134
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DataSource
      TabOrder = 4
    end
    object DBEdit8: TDBEdit [18]
      Left = 9
      Top = 138
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = DataSource
      TabOrder = 5
    end
    object DBEdit9: TDBEdit [19]
      Left = 9
      Top = 178
      Width = 199
      Height = 21
      DataField = 'CIDADE'
      DataSource = DataSource
      TabOrder = 6
    end
    object DBEdit10: TDBEdit [20]
      Left = 9
      Top = 218
      Width = 199
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DataSource
      TabOrder = 7
    end
    object DBEdit12: TDBEdit [21]
      Left = 237
      Top = 178
      Width = 394
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = DataSource
      TabOrder = 8
    end
    object DBEdit13: TDBEdit [22]
      Left = 237
      Top = 218
      Width = 108
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataSource
      TabOrder = 9
    end
    inherited Button1: TButton
      Width = 86
      Height = 57
      TabOrder = 10
      OnClick = Button1Click
      ExplicitWidth = 86
      ExplicitHeight = 57
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 46
      Width = 50
      Height = 21
      DataField = 'CLIENTE'
      DataSource = DataSource
      TabOrder = 11
    end
    object DBEdit14: TDBEdit
      Left = 358
      Top = 92
      Width = 300
      Height = 21
      DataField = 'EMAIL'
      DataSource = DataSource
      TabOrder = 12
    end
    object DBEdit7: TDBEdit
      Left = 237
      Top = 139
      Width = 400
      Height = 21
      DataField = 'RUA'
      DataSource = DataSource
      TabOrder = 13
    end
  end
  inherited Panel1: TPanel
    Top = 398
    Width = 764
    ExplicitTop = 398
    ExplicitWidth = 764
    inherited btSalvar: TButton
      Left = 463
      Enabled = False
      ExplicitLeft = 463
    end
    inherited btCancelar: TButton
      Left = 613
      Enabled = False
      ExplicitLeft = 613
    end
    inherited btFechar: TButton
      Left = 688
      ExplicitLeft = 688
    end
    inherited btNovo: TButton
      Left = 313
      ExplicitLeft = 313
    end
    inherited btEditar: TButton
      Left = 388
      ExplicitLeft = 388
    end
    object btPesquisa: TButton [5]
      Left = 1
      Top = 1
      Width = 104
      Height = 27
      Align = alLeft
      Caption = 'Pesquisa Clientes'
      TabOrder = 5
    end
    inherited btExcluir: TButton
      Left = 538
      TabOrder = 6
      ExplicitLeft = 538
    end
  end
  inherited DataSource: TDataSource
    DataSet = DataModule1.ClientDataSetClientes
    Left = 672
    Top = 96
  end
end

inherited FCad_Credito: TFCad_Credito
  Caption = 'Cr'#233'dito de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCad: TPanel
    inherited pnMenu: TPanel
      inherited cxSalvar: TcxButton
        OnClick = nil
      end
      inherited cxCancela: TcxButton
        OnClick = nil
      end
    end
  end
  inherited pnCon: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    inherited pnBusca: TPanel
      ExplicitWidth = 908
      inherited cxConsulta: TcxComboBox
        Properties.OnChange = nil
      end
      inherited eConsulta: TcxTextEdit
        Properties.OnChange = nil
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
        OnClick = nil
      end
      inherited cxCon: TcxButton
        OnClick = nil
      end
    end
    inherited pnBotaoCad: TPanel
      ExplicitLeft = 1
      ExplicitTop = 1
      inherited cxVoltar: TcxButton
        OnClick = nil
      end
    end
    inherited grConsulta: TcxGrid
      ExplicitLeft = 1
      ExplicitTop = 76
      ExplicitWidth = 908
      ExplicitHeight = 413
      inherited grConsultaDBTableView1: TcxGridDBTableView
        OnDblClick = nil
        OnCustomDrawCell = nil
      end
    end
    inherited pnBotaoCon: TPanel
      ExplicitTop = 489
      ExplicitWidth = 908
    end
  end
end

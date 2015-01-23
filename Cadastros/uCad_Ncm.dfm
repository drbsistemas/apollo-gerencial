inherited Fcad_NCM: TFcad_NCM
  Caption = 'Tela de NCM'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel
    inherited pnBusca: TPanel
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCon: TPanel
      inherited cxCadastro: TcxButton
        Enabled = False
      end
    end
  end
end

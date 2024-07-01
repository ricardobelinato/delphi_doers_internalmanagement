unit Unit_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.ExtCtrls, Vcl.Samples.Spin, Vcl.Mask;

type
  TForm_cadastro = class(TForm)
    MainMenu1: TMainMenu;
    Usurios1: TMenuItem;
    Cidades1: TMenuItem;
    Estados1: TMenuItem;
    Instituies2: TMenuItem;
    Itens3: TMenuItem;
    iposdeItens1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit_nome_cidade: TEdit;
    Edit_populacao: TEdit;
    Edit_nome_estado: TEdit;
    Edit_nome_instituicao: TEdit;
    Edit_responsavel: TEdit;
    Edit_descricao_item: TEdit;
    Edit1: TEdit;
    Edit_peso: TEdit;
    Edit_valor: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox_unidade: TComboBox;
    SpinEdit1: TSpinEdit;
    ComboBox_sigla_estado: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    MaskEdit_data_validade: TMaskEdit;
    Label17: TLabel;
    Label18: TLabel;
    MaskEdit_data_doacao: TMaskEdit;
    Label19: TLabel;
    MaskEdit_cnpj: TMaskEdit;
    procedure Usurios1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Instituies2Click(Sender: TObject);
    procedure Itens3Click(Sender: TObject);
    procedure iposdeItens1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_cadastro: TForm_cadastro;

implementation

{$R *.dfm}
uses Unit_login, Unit_usuario, Unit_cidade, Unit_estado, Unit_instituicoes, Unit_item, Unit_tipo_item, Unit_data_module, Unit_functions;

procedure TForm_cadastro.FormActivate(Sender: TObject);
begin
//  ShowMessage('cod adm: ' + BoolToStr(IndicadorAdministrador, True));
  if IndicadorAdministrador then
    Menu := MainMenu1
  else
    Menu := nil;
end;

procedure TForm_cadastro.Cidades1Click(Sender: TObject);
begin
  Form_cidade.Show;
end;

procedure TForm_cadastro.Estados1Click(Sender: TObject);
begin
  Form_estado.Show;
end;

procedure TForm_cadastro.Instituies2Click(Sender: TObject);
begin
  Form_instituicao.Show;
end;

procedure TForm_cadastro.iposdeItens1Click(Sender: TObject);
begin
  Form_tipoitem.Show;
end;

procedure TForm_cadastro.Itens3Click(Sender: TObject);
begin
  Form_item.Show;
end;

procedure TForm_cadastro.Usurios1Click(Sender: TObject);
begin
  Form_usuarios.Show;
end;

end.

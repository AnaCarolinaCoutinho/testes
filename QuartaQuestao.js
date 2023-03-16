// # 4) Dado o valor de faturamento mensal de uma distribuidora, detalhado por estado:

// # 	SP – R$67.836,43
// # 	RJ – R$36.678,66
// # 	MG – R$29.229,88
// # 	ES – R$27.165,48
// # 	Outros – R$19.849,53

// # Escreva um programa na linguagem que desejar onde calcule o percentual de representação que cada estado 
// # teve dentro do valor total mensal da distribuidora.

let faturamentoMes = 0;

let sp = 67836.43;
let rj = 36678.66;
let mg = 29229.88;
let es = 27165.48;
let outros = 19849.53;

faturamentoMes = sp + rj + mg + es + outros;

let porcentagemSP = (sp / faturamentoMes) * 100;
console.log ("Percentual de representação do estado de São Paulo: " + porcentagemSP.toFixed(2) + "%");

let porcentagemRJ = (rj / faturamentoMes) * 100;
console.log ("Percentual de representação do estado do Rio de Janeiro: " + porcentagemRJ.toFixed(2) + "%");

let porcentagemMG = (mg / faturamentoMes) * 100;
console.log ("Percentual de representação do estado de Minas Gerais: " + porcentagemMG.toFixed(2) + "%");

let porcentagemES = (es / faturamentoMes) * 100;
console.log ("Percentual de representação do estado do Espírito Santo: " + porcentagemES.toFixed(2) + "%");

let porcentagemOutros = (outros / faturamentoMes) * 100;
console.log ("Percentual de representação dos demais estados: " + porcentagemOutros.toFixed(2) + "%");
# 3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, 
# faça um programa, na linguagem que desejar, que calcule e retorne:
# 	• O menor valor de faturamento ocorrido em um dia do mês;
# 	• O maior valor de faturamento ocorrido em um dia do mês;
# 	• Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.

# IMPORTANTE:
# 	a) Usar o json ou xml disponível como fonte dos dados do faturamento mensal;
# 	b) Podem existir dias sem faturamento, como nos finais de semana e feriados. 
#     Estes dias devem ser ignorados no cálculo da média;

require 'json'

def faturamento_empresas
json = File.read('dados.json')
dados = JSON.parse(json)

@maior_faturamento = 0
@menor_faturamento = 0
@contador_dias_acima_media = 0
@media_mensal = 0
@soma_mensal = 0


dados.each do |el|

	if el['valor'] > 0

		if @maior_faturamento == 0
			@maior_faturamento = el['valor']
		end

		if el['valor'] > @maior_faturamento
			@maior_faturamento = el['valor']
		end

		if @menor_faturamento == 0
			@menor_faturamento = el['valor']
		end

		if el['valor'] < @menor_faturamento
			@menor_faturamento = el['valor']
		end

		@soma_mensal += el['valor']

		if el['valor'] > @media_mensal
			@contador_dias_acima_media += 1
		end
	end
end

@media_mensal = @soma_mensal / dados.size
end
faturamento_empresas()

puts "Maior faturamento: #{@maior_faturamento}"
puts "Menor faturamento: #{@menor_faturamento}"
puts "Média mensal: #{@media_mensal}"
puts "Número de dias acima da média: #{@contador_dias_acima_media}"
<p>Acabei me deparando recentemente com um cenário tão complexo que não sabia como realizar pesquisas pra tentar solucionar esse problema, resolvi então criar essa POC para quardar esse conhecimento:</p>
<p>O cenario é o seguinte 2 tabelas com relacionameto N,N, porém por azar do destino esse relacionamento não foi previsto no momento da implementação da tabela</p>
<div>
<b>SELECT * FROM POC.FUNCIONARIO</b>
<table border="1">
<thead>
<tr>
<th> ID </th> <th>NOME</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>João</td>
</tr>
<tr>
<td>2</td>
<td>Maria</td>
</tr>
<tr>
<td>3</td>
<td>Luzia</td>
</tr>
</tbody>
</table>
</div>
<div>
<b>SELECT * FROM POC.TELEFONE_FUNCIONARIO</b>
<table border="1">
<thead>
<tr>
<th> ID </th>
<th> ID_FUNCIONARIO </th>
<th> NM_TELEFONE </th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>João</td>
<td>João</td>
</tr>
<tr>
<td>1</td>
<td>João</td>
<td>João</td>
</tr>
<tr>
<td>1</td>
<td>João</td>
<td>João</td>
</tr>
</tbody>
</table>
</div>


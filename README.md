<p>Acabei me deparando recentemente com um cenário tão complexo que não sabia como realizar pesquisas pra tentar solucionar esse problema, resolvi então criar essa POC para quardar esse conhecimento:</p>
<p>O cenario é o seguinte 2 tabelas com relacionameto N,N, porém por azar do destino esse relacionamento não foi previsto no momento da implementação da tabela</p>
<div>
<b>SELECT * FROM POC.FUNCIONARIO</b>
<table>
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
<table>
<thead>
<tr>
<th> ID </th>
<th> ID_FUNCIONARIO </th>
<th> NM_TELEFONE </th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td><td>1</td><td>11 99999-9999</td>
</tr>
<tr>
<td>2</td><td>1</td><td>11 97070-7070</td>
</tr>
<tr>
<td>3</td><td>1</td><td>11 5555-5555</td>
</tr>
<tr>
<td>4</td><td>2</td><td>11 18672-9999</td>
</tr>
<tr>
<td>5</td><td>2</td><td>11 91515-1515</td>
</tr>
<tr>
<td>6</td><td>3</td><td>11 96565-9999</td>
</tr>
</tbody>
</table>
</div>

<p>Ao realizar um inner join comum esse seria o resultado, as colunas respectivas aos nomes ficariam duplicadas</p> 

<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">ID</th>
    <th class="tg-0pky">NOME</th>
    <th class="tg-0pky">ID</th>
    <th class="tg-0pky">ID_FUNCIONARIO</th>
    <th class="tg-0pky">NM_TELEFONE</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">JOÃO</td>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">11 99999-9999</td>
  </tr>
  <tr>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">JOÃO</td>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">11 97070-7070</td>
  </tr>
  <tr>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">JOÃO</td>
    <td class="tg-0pky">3</td>
    <td class="tg-0pky">1</td>
    <td class="tg-0pky">11 5555-5555</td>
  </tr>
  <tr>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">MARIA</td>
    <td class="tg-0pky">4</td>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">11 18672-9999</td>
  </tr>
  <tr>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">MARIA</td>
    <td class="tg-0pky">5</td>
    <td class="tg-0pky">2</td>
    <td class="tg-0pky">11 91515-1515</td>
  </tr>
  <tr>
    <td class="tg-0pky">3</td>
    <td class="tg-0pky">LUZIA</td>
    <td class="tg-0pky">6</td>
    <td class="tg-0pky">3</td>
    <td class="tg-0pky">11 96565-9999</td>
  </tr>
</tbody>
</table>
 <p>O meu resultado tão esperado era esse aqui, e consegui sem a necessidade de re-criar as tabelas</p>
 <table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">ID</th>
    <th class="tg-0lax">NOME</th>
    <th class="tg-0lax">ID_FUNCIONARIO</th>
    <th class="tg-0lax">TELEFONE1</th>
    <th class="tg-0lax">TELEFONE2</th>
    <th class="tg-0lax">TELEFONE3</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">1</td>
    <td class="tg-0lax">JOÃO</td>
    <td class="tg-0lax">1</td>
    <td class="tg-0lax">11 99999-9999</td>
    <td class="tg-0lax">11 97070-7070</td>
    <td class="tg-0lax">11 5555-5555</td>
  </tr>
  <tr>
    <td class="tg-0lax">2</td>
    <td class="tg-0lax">MARIA</td>
    <td class="tg-0lax">2</td>
    <td class="tg-0lax">11 18672-9999</td>
    <td class="tg-0lax">11 91515-1515</td>
    <td class="tg-0lax">NULL</td>
  </tr>
  <tr>
    <td class="tg-0lax">3</td>
    <td class="tg-0lax">LUZIA</td>
    <td class="tg-0lax">3</td>
    <td class="tg-0lax">11 96565-9999</td>
    <td class="tg-0lax">NULL</td>
    <td class="tg-0lax">NULL</td>
  </tr>
</tbody>
</table>

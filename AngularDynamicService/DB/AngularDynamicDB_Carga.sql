USE [AngularDynamicDB]
GO
SET IDENTITY_INSERT [dbo].[Pagina] ON 

GO
INSERT [dbo].[Pagina] ([Id], [Nome], [Descricao], [Interna], [Ativa], [NomeController], [HTML]) VALUES (1, N'', N'Página Inicial', 1, 1, N'home', N'views/PaginaInicial.html')
GO
INSERT [dbo].[Pagina] ([Id], [Nome], [Descricao], [Interna], [Ativa], [NomeController], [HTML]) VALUES (2, N'historia-bonita', N'Histórias', 1, 1, N'historia', N'views/historias.html')
GO
INSERT [dbo].[Pagina] ([Id], [Nome], [Descricao], [Interna], [Ativa], [NomeController], [HTML]) VALUES (3, N'outra-historia', N'Outras Histórias', 0, 1, N'historiaDinamica', N'<h1>Histórias</h1>
<br />

<ul>
    <li>
        <a href="#/outras-historias">Página Inicial</a>
    </li>
    <li>
        <a href="#/historias-bonitas">Histórias Bonitas</a>
    </li>
    <li>
        <a href="#/outras-historias">Outras Histórias</a>
    </li>



</ul>
<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
    <tbody>
        <tr>
            <td><strong>A Par&aacute;bola dos Filhos Cobi&ccedil;osos</strong></td>
        </tr>
    </tbody>
</table>

<p>Havia uma vez um lavrador generoso e muito trabalhador que tinha v&aacute;rios filhos, todos pregui&ccedil;osos e cheios de cobi&ccedil;a. Em seu leito de morte, o velho lavrador lhes disse que encontrariam seu tesouro se viessem a cavar num lugar determinado. Assim que o lavrador morreu, seus filhos correram para o campo, que escavaram de ponta a ponta, com &acirc;nsia e desespero crescentes ao n&atilde;o encontrar o ouro no trecho indicado.</p>

<p>N&atilde;o encontraram o que buscavam. Imaginando ent&atilde;o que por ser muito generoso, o pai distribu&iacute;ra seu ouro em vida, desistiram da busca. Por fim, pensaram que, j&aacute; que a terra fora revolvida, poderiam plantar ali algum cereal. Assim plantaram trigo, que cresceu e deu abundante safra. Eles venderam o produto da colheita e tiveram um ano de prosperidade.</p>

<p>Conclu&iacute;da a colheita, os filhos do lavrador pensaram novamente na remota possibilidade de que o ouro talvez lhes tivesse passado despercebido. E foram cavar de novo em suas terras, mas sem resultado.</p>

<p>
    Transcorridos alguns anos eles acostumaram-se a semear e colher, seguindo o curso das esta&ccedil;&otilde;es, algo que n&atilde;o tinham aprendido antes.&nbsp;<br />
    Foi ent&atilde;o que compreenderam a raz&atilde;o pela qual seu pai usara aquele expediente para disciplin&aacute;-los, e se converteram em lavradores honestos e contentes com sua condi&ccedil;&atilde;o. Finalmente se deram conta de que possu&iacute;am riqueza suficiente para n&atilde;o precisarem se interessar pelo tesouro escondido.
</p>

<p>D&aacute;-se o mesmo com o ensinamento acerca da maneira de entender o destino humano e o significado da vida. O professor, ao defrontar-se com a impaci&ecirc;ncia, a confus&atilde;o e ansiedade dos estudantes, deve encaminh&aacute;-los para uma atividade que ele sabe ser instrutiva e ben&eacute;fica para eles, mas cuja verdadeira fun&ccedil;&atilde;o e objetivo com frequ&ecirc;ncia lhes permanecem ocultos devido a sua pr&oacute;pria inexperi&ecirc;ncia.</p>

<table border="0" cellpadding="10" cellspacing="0" style="width:100%">
    <tbody>
        <tr>
            <td>
                <p><strong>A Par&aacute;bola dos Filhos Cobi&ccedil;osos</strong></p>

                <p>&nbsp;</p>

                <p>
                    <strong>
                        Esta hist&oacute;ria que enfatiza a afirma&ccedil;&atilde;o de que uma pessoa pode desenvolver certas faculdades a despeito de seu esfor&ccedil;o para desenvolver outras &eacute;, de maneira inusitada, muito conhecida. Isto talvez seja devido a ser prefaciada assim:<br />
                        &quot;Aqueles que a repetem obter&atilde;o mais do que sabem&quot;.
                    </strong>
                </p>

                <p><strong>Ela foi publicada pelo frade Roger Bacon (que citava a filosofia sufi e a ensinou em Oxford, de onde foi afastado por ordem do Papa), e pelo qu&iacute;mico Boerhaave, que viveu no s&eacute;culo XVII.</strong></p>

                <p><strong>A presente vers&atilde;o &eacute; atribu&iacute;da ao sufi Hasan de Basra, que viveu h&aacute; quase doze s&eacute;culos.</strong></p>
            </td>
        </tr>
    </tbody>
</table>

<table border="0" cellpadding="5" cellspacing="0" style="width:100%">
    <tbody>
        <tr>
            <td>
                <p>
                    Extra&iacute;do de<br />
                    &#39;Hist&oacute;rias dos Dervixes&#39;<br />
                    Idries Shah<br />
                    Nova Fronteira 1976
                </p>
            </td>
        </tr>
    </tbody>
</table>
')
GO
SET IDENTITY_INSERT [dbo].[Pagina] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

GO
INSERT [dbo].[Menu] ([Id], [Nome], [Ordem], [URL], [Pagina_Id]) VALUES (1, N'Início', 1, N'/', 1)
GO
INSERT [dbo].[Menu] ([Id], [Nome], [Ordem], [URL], [Pagina_Id]) VALUES (2, N'Histórias Bonitas', 2, N'/historias-bonitas', 2)
GO
INSERT [dbo].[Menu] ([Id], [Nome], [Ordem], [URL], [Pagina_Id]) VALUES (3, N'Outras Histórias', 3, N'/outras-historias', 3)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201608041530429_InitialCreate', N'AngularDynamicService.Repository.AngularDynamicDbContext', 0x1F8B0800000000000400ED59DB6EE336107D2FD07F10F4D416592BCEEE026D60EF227592D6E8E6823859F46D414B63872845A92465D828FA657DE827F5173AD4CD14292BB2B3BB5814455E129273E6C2339CD1E49FBFFE1EBD5DC7CC5B819034E1637F3838F63DE0611251BE1CFB995ABCF8DE7FFBE6EBAF461751BCF6DE57E75EEA7328C9E5D87F542A3D0D02193E424CE420A6A14864B250833089031225C1C9F1F10FC170180042F888E579A3BB8C2B1A43FE07FE39497808A9CA08BB4A2260B25CC79D598EEA5D9318644A4218FB677C993122CE379CA0AA1988150D6170076922A94AC4C6F7CE182568D70CD8C2F708E789220AAD3E7D90305322E1CB598A0B84DD6F52C0730BC22494DE9C6E8FF775ECF8443B166C052BA830932A89F7041CBE2C2315D8E207C5DBAF2389B1BCC098AB8DF63A8FE7D8BF029EF99EADE874C2843EB42BD4C5150DB4F091D77AE4A8260AF249FF1C79938CA94CC09843A6046147DE6D366734FC0536F7C96FC0C73C63CC3416CDC5BDC6022EDD8A2405A13677B0285D9846BE1734E5025BB01633640A07A75CBD3CF1BD6B544EE60C6A2E18C19821A7E027E0208882E8962805826B0CC8A3E968B7745D273154DA907C9855BE7745D6EF802FD5E3D8C7ABF2BD4BBA86A85A292D78E01493108594C8A0C5C26EAD372282F82927BB211EEEDE75D8FDAAA7DD968E6BB2A2CB3CAE96B65BB2A49CF8DE1DB07C5B3ED2B4C8E09C671FAAFD4B91C477092BB95B2E7F9825990875981377EF9E8825A8A625A3609B0A9D0952A93D30450AF1FF93E4994982BF1E42364BC939C850D090241D9A869F261D3182180F5229FE31419612BE37CC99A2AB6783E85863B9C53AC818888E58BCFE24A1F8F9FEAAEB5D39E4AA7765F39994494873821AF5AE7A4A9A565EF0C8EB78570A73ABD7082DC644A529A626AA1DFBDF394EB7C3554F9101573D304DC0E3C16068FB6878E33E59FA4209C5F4AB98D27870CEE77A1FD6AAE521C39EA87CCB64195BDB138D3F03D56819B6016F84C5894253B672D691AE362C79C3E5A6017539304EB4540BFB61ECBEE4DADACAC9A09F7C75AB86FC0E7F82A6432D14AEEF71DB000745075C75CAC18E56797445D214B3C9689DCB156F56F4CD9317B3FD5BC8B8C00842D9D249D6D6D69AB00C902558BBA81A2DBDA442AA73A2C89CE87C9E44B1736C176B77B0AAD26A10D3BDB18A69D561FD7B5B8EB8DF118336C46D582FD1D318CB5BEE34D8E471C4F24F1982FA5ACAEC246159CC7795EA2EE9A2709AF2C54A7F84B2533421CAA5FE1879AB6822E40BAEFC28B062675F57E0DC979540F6DDF762C6CED7E019DC68C7ECC18E5D825F2A3F8CAEC9843196FB63D56D50C3A16AB13F4ED9079928E5D27E9131DB203B46E65E7FD4A2BB31B18A95CF9F0BCD52E33E957509DDF341ACE5FA3C7BBA625A116AA99C6E6C7A654209D296103A38B5E2FD6C2ABB81036DDADB18A45944F30E752A75275DF7BBBD3CB53B0A97094E63611FA9795837185623312A8BFAD38339A7CA17477C0F9D5FD14857F8D9462A8807FAC060F63B9B308ACCDF1EB8229C2E40AAE26BD73F391E9E58D3BC2F67B2164819B11EE3B5CFFEB94E75449FFC203FE0ABB152C05744848F44B883ACE74CA972B30F9F51B51AF5AA69549F2981916B865DCE67D39447B01EFB7FE452A7DEF4D70FB5E091A7FD12A7DEB1F767B7F67DC750FF5D2A7D1393F5B7FB5E9533D069E5C0F000625AF39A39DD9F9A8D59CD2100ED739A56175FEFEFA139862926038710F5B0098BD979EC3906713EC20F98CD607280D0DC250CE32B95C0BAE8745FB782F290A684356D76DB823E29A7035803DA3BE79002D7B9647AD5474F67FF53A35AB9FF94F37BCE99DC0FFB674C8F8A7661EC47739DD105173FCE5CA90DF9B3CF9C9A5676CC895A48FEC46CEAE34C96DC460FF962FC9F16A92AE9720BA19B570E618329F599295F2415672D8BAA234E17AE4884343A138A2E48A8703B0429F309F17BC2323C7211CF219AF29B4CA5994297219EB3C63F1734F1BBF4E7E3B3A6CDA39B34FF87D3C77001CDA4E802DCF01F33CAA2DAEE4BF749DE05A133AA2CB6FA2E952EBACB4D8D749DF09E4065F8EA87E01EE2942198BCE133B282436C7B90F00E9624DC54FDFA6E90A72FA219F6D139254B416259626CE5F14FE47014AFDFFC0BF26B8C18AE200000, N'6.1.3-40302')
GO

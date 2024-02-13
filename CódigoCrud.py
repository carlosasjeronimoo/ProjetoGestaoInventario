while True:
    print("[1]Cadastrar\n[2]Listar\n[3]Alterar\n[4]Deletar\n[0]Sair")
    opcao = int(input("Opção:"))
    if opcao == 0:
        print("Programa encerrado.")
        break

    if opcao == 1:
        print("[1]Cadastrar Cliente\n[2]Cadastrar Produto\n[3]Cadastrar Pedido\n[0]Retornar")
        opcao = int(input("Opção:"))
        if opcao == 1:
            nome_completo = input("Digite seu nome:")
            data_nascimento = input("Digite a data de nascimento(aaa-mm-dd):")
            endereço_completo = input("Digite o seu endereço completo")
            sql=f"INSERT INTO clientes(nome_completo,data_nascimento,endereço_completo) VALUES('{nome_completo}','{data_nascimento}','{endereço_completo}')"
            cursor.execute(sql)
            con.commit()
    if opcao == 2:
        print("[1]Listar Todos\n[2]Listar Um")
        opcao = int(input("Opção:"))

        if opcao == 1:
            sql="SELECT * FROM clientes;"
            cursor.execute(sql)
            retorno_do_banco =cursor.fetchall()
            for i in retorno_do_banco:
                print("_"*50)
                print(i[0]," | ",i[1]," | ",i[2].strftime("%d-%m-%Y")," | ",i[3])

        if opcao == 2:
            codigo=int(input("Informe o codigo do cliente: "))
            sql = f"SELECT * FROM clientes WHERE cliente_id = {codigo};"
            cursor.execute(sql)
            cliente=cursor.fetchone()
            print(cliente)

    if opcao == 3:
        codigo = int(input("Informe o codigo do cliente: "))
        nome_completo = input("Digite o novo nome:")
        data_nascimento = input("Digite a nova data de nascimento (aaa-mm-dd):")
        endereco_completo = input("Digite o novo endereço completo:")
        sql = f'UPDATE clientes SET nome_completo = "{nome_completo}", data_nascimento = "{data_nascimento}", endereço_completo = "{endereco_completo}" WHERE cliente_id = {codigo}'
        cursor.execute(sql)
        con.commit()
        print("Cliente atualizado com sucesso!")

    if opcao == 4:
        codigo = int(input("Informe o codigo do cliente: "))
        sql=f"DELETE FROM clientes WHERE cliente_id = {codigo};"
        cursor.execute(sql)
        con.commit()
        print("Cliente deletado com sucesso!")
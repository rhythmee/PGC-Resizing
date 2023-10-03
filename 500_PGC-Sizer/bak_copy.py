def optimize_pgc_size():
    try:
        model = gp.Model("optimize_pgc_size")

        pgc_list = range(11)
        size_list = range(5)
        pgc_vars = model.addVars(pgc_list, size_list, vtype=GRB.BINARY, name="pgc_vars")

        model.setObjective(gp.quicksum(size_list[j] * pgc_vars[i, j] for i in pgc_list for j in size_list), GRB.MINIMIZE)

        model.addConstrs((pgc_vars.sum(i, '*') == 1 for i in pgc_list), "one_size_per_pgc")

        # IR drop 체크 결과를 미리 계산하여 리스트로 얻어옴
        IR_drop_values = IR_drop_check([size_list[j] * pgc_vars[i, j] for i in pgc_list for j in size_list])

        # IR drop violation constraint 추가
        M = 1000000
        for j in size_list:
            model.addConstr(gp.quicksum(pgc_vars[i, j] * size_list[j] for i in pgc_list) >= M * (1 if all(v < 0.1 for v in IR_drop_values) else 0),
                            f"ir_drop_violation_{j}")

        model.optimize()

path_to_model = '';
model = load(strcat(path_to_model, '.mat'));

fldnames = fieldnames(model);

dingo-walk_model = struct;
dingo-walk_model.S = model.(fldnames{1}).S;
dingo-walk_model.lb = model.(fldnames{1}).lb;
dingo-walk_model.ub = model.(fldnames{1}).ub;
dingo-walk_model.c = model.(fldnames{1}).c;
dingo-walk_model.index_obj = find(dingo-walk_model.c == 1);
dingo-walk_model.rxns = model.(fldnames{1}).rxns;
dingo-walk_model.mets = model.(fldnames{1}).mets;

save('dingo-walk_model.mat', 'dingo-walk_model')


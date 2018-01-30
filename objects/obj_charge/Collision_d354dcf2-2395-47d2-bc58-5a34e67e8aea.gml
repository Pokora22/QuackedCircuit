instance_destroy(other);
scr_scoreUpdate(-1);
instance_destroy(self);
instance_create_layer(x, y, "Charges", obj_failSpark);
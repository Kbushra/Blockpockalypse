if gunReq { activated = global.item == "Gun"; }

if notSolid { solid = false; }
else { solid = !activated; }

if halfMemo && activated { room_goto(roomID); global.itemCreated = false; }
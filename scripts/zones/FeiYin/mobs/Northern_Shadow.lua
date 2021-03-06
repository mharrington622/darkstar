----------------------------------
-- Area: Fei'Yin
--  NM:  Northern Shadow
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Northern Shadow's ToD
    SetServerVariable("[POP]Northern_Shadow", os.time() + 57600); -- 16 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Northern_Shadow");
    SetServerVariable("[PH]Northern_Shadow", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;

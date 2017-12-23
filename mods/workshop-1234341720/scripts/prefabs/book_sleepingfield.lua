local assets =
{
    Asset("ANIM", "anim/book_sleepingfield.zip"),
	Asset("ATLAS", "images/inventoryimages/book_sleepingfield.xml"),
    Asset("IMAGE", "images/inventoryimages/book_sleepingfield.tex"),
}

local prefabs =
{
    "sleepcloud",
    "sleepbomb_burst", 
}

local book_defs =
{
    {
        name = "book_sleepingfield",
        uses = 13,
        fn = function(inst, reader)
            local pt = reader:GetPosition()
            local spawning = 8 -- how many times function is going to loop
			reader.components.talker:Say("Gastanet!")
            reader.components.sanity:DoDelta(-15)
			reader.components.hunger:DoDelta(-15)

            reader:StartThread(function()
                for k = 1, spawning do
                    local theta = math.random() * 2 * PI
                    local radius = math.random(4, 12)

                    local result_offset = FindValidPositionByFan(theta, radius, 1, function(offset)
                        local pos = pt + offset
                        return TheWorld.Map:IsPassableAtPoint(pos:Get()) and not
							TheWorld.GroundCreep:OnCreep(pos:Get()) and
							#TheSim:FindEntities(pos.x, 0, pos.z, 1, nil, { "INLIMBO", "FX" }) <= 0
                            and TheWorld.Map:IsDeployPointClear(pos, nil, 1)
                    end)

                    if result_offset ~= nil then
                        local x, z = pt.x + result_offset.x, pt.z + result_offset.z
						SpawnPrefab("sleepcloud").Transform:SetPosition(x, 0, z)
						SpawnPrefab("sleepbomb_burst").Transform:SetPosition(x, 0, z)
                    end
					Sleep(0.5)
                end
            end)
            return true
        end,
    },
}

local function MakeBook(def)

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank("book_sleepingfield")
        inst.AnimState:SetBuild("book_sleepingfield")
        inst.AnimState:PlayAnimation("idle")

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        -----------------------------------
		inst.fxcolour = {1, 145/255, 0}
        inst:AddComponent("inspectable")
        inst:AddComponent("book")
		
        inst.components.book.onread = def.fn

        inst:AddComponent("inventoryitem")
		inst.components.inventoryitem.imagename = "book_sleepingfield"
		inst.components.inventoryitem.atlasname = "images/inventoryimages/book_sleepingfield.xml"

        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(def.uses)
        inst.components.finiteuses:SetUses(def.uses)
        inst.components.finiteuses:SetOnFinished(inst.Remove)

        inst:AddComponent("fuel")
        inst.components.fuel.fuelvalue = TUNING.MED_FUEL

        MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
        MakeSmallPropagator(inst)
        MakeHauntableLaunch(inst)

        return inst
    end

    return Prefab(def.name, fn, assets, prefabs)
end

local book_sleepingfield = {}
for i, v in ipairs(book_defs) do
    table.insert(book_sleepingfield, MakeBook(v))
end
book_defs = nil
return unpack(book_sleepingfield)

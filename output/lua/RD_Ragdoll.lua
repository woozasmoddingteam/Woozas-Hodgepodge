-- local kRagdollTime = 12
-- local kDissolveDelay = 10
-- local kDissolveSpeed = 2.25


-- function Ragdoll:TimeUp()
--    Log("Timeout")
--    DestroyEntity(self)
-- end

-- function Ragdoll:OnCreate()

--    Entity.OnCreate(self)

--    local now = Shared.GetTime()
--    self.dissolveStart = now + kDissolveDelay
--    self.dissolveAmount = 0

--    if Server then
--       self:AddTimedCallback(Ragdoll.TimeUp, kRagdollTime)
--    end

--    self:SetUpdates(true)

--    InitMixin(self, BaseModelMixin)
--    InitMixin(self, ModelMixin)

--    self:SetRelevancyDistance(kMaxRelevancyDistance)
--    Log("On create called for the ragdoll")
-- end


-- function Ragdoll:OnUpdateRender()

--    PROFILE("Ragdoll:OnUpdateRender")

--    local now = Shared.GetTime()
--    if self.dissolveStart < now then

--       if self.dissolveAmount < 1 then
--          local now = Shared.GetTime()
--          local t = (now - self.dissolveStart) / kDissolveSpeed
--          self.dissolveAmount = Math.Clamp( 1 - (1-t)^3, 0.0, 1.0 )
--       end

--       Log("Dissolve amount " .. tostring(1-self.dissolveAmount))
--       self:SetOpacity(1-self.dissolveAmount, "dissolveAmount")

--    end

-- end

-- function CreateRagdoll(fromEntity)

--    local useModelName = fromEntity:GetModelName()
--    local useGraphName = fromEntity:GetGraphName()

--    Log("Create ragdoll called")
--    if useModelName and string.len(useModelName) > 0 and useGraphName and string.len(useGraphName) > 0 then

--       local ragdoll = CreateEntity(Ragdoll.kMapName, fromEntity:GetOrigin())
--       ragdoll:SetCoords(fromEntity:GetCoords())
--       ragdoll:SetModel(useModelName, useGraphName)

--       Log("Create ragdoll called and created")
--       if fromEntity.GetPlayInstantRagdoll and fromEntity:GetPlayInstantRagdoll() then
--          ragdoll:SetPhysicsType(PhysicsType.Dynamic)
--          ragdoll:SetPhysicsGroup(PhysicsGroup.RagdollGroup)
--       else
--          ragdoll:SetPhysicsGroup(PhysicsGroup.SmallStructuresGroup)
--       end

--       ragdoll:CopyAnimationState(fromEntity)
--    end

-- end


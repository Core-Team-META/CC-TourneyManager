Assets {
  Id: 5476186188111447366
  Name: "RPS_MatchStage"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8456419368000778161
      Objects {
        Id: 8456419368000778161
        Name: "RPS_Match"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4142048574253822490
        ChildIds: 10176650175498319785
        ChildIds: 17914759578105883327
        ChildIds: 5484543344250515698
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4142048574253822490
        Name: "RPS_Match_server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8456419368000778161
        UnregisteredParameters {
          Overrides {
            Name: "cs:root"
            ObjectReference {
              SubObjectId: 8456419368000778161
            }
          }
          Overrides {
            Name: "cs:PlayerSpot1"
            ObjectReference {
              SubObjectId: 17914759578105883327
            }
          }
          Overrides {
            Name: "cs:PlayerSpot2"
            ObjectReference {
              SubObjectId: 5484543344250515698
            }
          }
          Overrides {
            Name: "cs:RPS_action_rock"
            AssetReference {
              Id: 1371974498219595122
            }
          }
          Overrides {
            Name: "cs:RPS_action_paper"
            AssetReference {
              Id: 3484184920787573982
            }
          }
          Overrides {
            Name: "cs:RPS_action_scissors"
            AssetReference {
              Id: 10087261152373902678
            }
          }
          Overrides {
            Name: "cs:RPS_WorldIcon_Rock"
            AssetReference {
              Id: 3328554878203995829
            }
          }
          Overrides {
            Name: "cs:RPS_WorldIcon_Paper"
            AssetReference {
              Id: 27369142792191305
            }
          }
          Overrides {
            Name: "cs:RPS_WorldIcon_Scissors"
            AssetReference {
              Id: 1429397764755862452
            }
          }
          Overrides {
            Name: "cs:RPS_LoserExplosion"
            AssetReference {
              Id: 17929487488560365464
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 269298083778353054
          }
        }
      }
      Objects {
        Id: 10176650175498319785
        Name: "Lens - Half"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 6
            Y: 4
            Z: 4
          }
        }
        ParentId: 8456419368000778161
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14461291733563422790
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0270200148
              B: 0.51
              A: 1
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 11572089033922724132
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17914759578105883327
        Name: "PlayerSpot1"
        Transform {
          Location {
            X: -200
          }
          Rotation {
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 8456419368000778161
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5663735676046209887
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8389651592253108254
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5484543344250515698
        Name: "PlayerSpot2"
        Transform {
          Location {
            X: 200
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 8456419368000778161
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5663735676046209887
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8389651592253108254
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 11572089033922724132
      Name: "Lens - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_half_lense_001"
      }
    }
    Assets {
      Id: 14461291733563422790
      Name: "Car Paint Advanced 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_car-paint_advanced_001_uv_ref"
      }
    }
    Assets {
      Id: 8389651592253108254
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 5663735676046209887
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 101
}

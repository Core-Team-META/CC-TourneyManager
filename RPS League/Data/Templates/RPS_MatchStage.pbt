Assets {
  Id: 5476186188111447366
  Name: "RPS_MatchStage"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8456419368000778161
      Objects {
        Id: 8456419368000778161
        Name: "RPS_MatchStage"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4142048574253822490
        ChildIds: 17914759578105883327
        ChildIds: 5484543344250515698
        ChildIds: 11246812462898306070
        ChildIds: 9584298459335484778
        ChildIds: 13642333704285473063
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
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
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 13642333704285473063
            }
          }
          Overrides {
            Name: "cs:RespawnPoint"
            ObjectReference {
              SubObjectId: 10242018125888256849
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
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
              Id: 15418189413604061223
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
            Id: 8388493796315868159
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
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
              Id: 15418189413604061223
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
            Id: 8388493796315868159
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11246812462898306070
        Name: "StaticContext"
        Transform {
          Location {
            X: 59.8477745
            Y: -26.6023388
            Z: -235.218658
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
        ChildIds: 13176663833136593560
        ChildIds: 3363884863528510921
        ChildIds: 10242018125888256849
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
        NetworkContext {
          Type: RuntimeStatic
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13176663833136593560
        Name: "Architecture"
        Transform {
          Location {
            X: -52.3971214
            Y: 23.7443733
            Z: -215.231476
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11246812462898306070
        ChildIds: 12101464139617860583
        ChildIds: 6612972467815249283
        ChildIds: 5213926118979214391
        ChildIds: 2748320220032075098
        ChildIds: 5184977180739974827
        ChildIds: 10976439342121074688
        ChildIds: 10176650175498319785
        ChildIds: 17939862650827967336
        ChildIds: 18416371064534307111
        ChildIds: 9587340877596409496
        ChildIds: 4604141148230859131
        ChildIds: 10725213869248888312
        ChildIds: 1011241229932583588
        ChildIds: 13412124471029691061
        ChildIds: 15117425227820281460
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12101464139617860583
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85794067
            Z: 465.556702
          }
          Rotation {
            Yaw: -154.708099
            Roll: -179.999985
          }
          Scale {
            X: 0.637496591
            Y: 0.637496591
            Z: 0.424834937
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14428585022685220673
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.919999957
              G: 0.091390729
              A: 1
            }
          }
        }
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
            Id: 11110022693932442276
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6612972467815249283
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 371.816284
          }
          Rotation {
          }
          Scale {
            X: 0.640097618
            Y: 0.640097618
            Z: 0.0921339914
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
            Id: 11110022693932442276
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5213926118979214391
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 351.400726
          }
          Rotation {
          }
          Scale {
            X: 0.720216751
            Y: 0.720216751
            Z: 0.103737392
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2748320220032075098
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 352.674591
          }
          Rotation {
          }
          Scale {
            X: 0.78590709
            Y: 0.78590709
            Z: 0.116936348
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5184977180739974827
        Name: "Arches"
        Transform {
          Location {
            X: 104.309204
            Y: -40.0112915
            Z: 328.155212
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13176663833136593560
        ChildIds: 2791081552905792623
        ChildIds: 3393008058506636908
        ChildIds: 6855763930925798980
        ChildIds: 6317248800180319851
        ChildIds: 13941400651703270928
        ChildIds: 16864820320430407957
        ChildIds: 2312948725923374351
        ChildIds: 7135615224771154658
        ChildIds: 1809565235272306435
        ChildIds: 14768129261047563887
        ChildIds: 12816569550898246443
        ChildIds: 15335884181886108947
        ChildIds: 3492093594821875809
        ChildIds: 15364077271912958956
        ChildIds: 3450300776568714262
        ChildIds: 16747908533641273891
        ChildIds: 3208187392155615544
        ChildIds: 17513288659056201120
        ChildIds: 8479461709532105254
        ChildIds: 12890298279318944099
        ChildIds: 9805959241861068055
        ChildIds: 16081292179533858411
        ChildIds: 71669674113256392
        ChildIds: 9667854792019401360
        ChildIds: 2332031485987362244
        ChildIds: 10437278552533601042
        ChildIds: 18445837303509384450
        ChildIds: 13158274382649879083
        ChildIds: 1132077212796180683
        ChildIds: 6410754483842266538
        ChildIds: 1859813688454641026
        ChildIds: 4938730311437821556
        ChildIds: 7207706921833878668
        ChildIds: 13676088219557457245
        ChildIds: 16776648577677506492
        ChildIds: 17784755673838268006
        ChildIds: 11337047300831211613
        ChildIds: 12927473251765759660
        ChildIds: 667911617386648686
        ChildIds: 6854240543770809077
        ChildIds: 9121616045392517564
        ChildIds: 16988995178163630238
        ChildIds: 4592104318052803429
        ChildIds: 98030176337333874
        ChildIds: 2722154807174227625
        ChildIds: 11934736745372505358
        ChildIds: 16939954732529730901
        ChildIds: 14934746911585255643
        ChildIds: 2378131368057926165
        ChildIds: 11227055890943540872
        ChildIds: 16576803917095153756
        ChildIds: 4023688634688208589
        ChildIds: 3332164986972177191
        ChildIds: 17219713399681700321
        ChildIds: 10381283515954136821
        ChildIds: 11193359452437786936
        ChildIds: 2039469551900602786
        ChildIds: 1407592675419237595
        ChildIds: 15489649489169442583
        ChildIds: 3847562512284255725
        ChildIds: 11832967340814165416
        ChildIds: 7047677505211592972
        ChildIds: 10496677612379220085
        ChildIds: 1282446259547340743
        ChildIds: 1887603712280097078
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2791081552905792623
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 30.6506348
            Y: -396.282288
          }
          Rotation {
            Yaw: 108.914513
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3393008058506636908
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 107.495483
            Y: -363.408905
          }
          Rotation {
            Yaw: 119.30162
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6855763930925798980
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 340.269836
            Y: -50.9575806
          }
          Rotation {
            Yaw: 169.220978
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6317248800180319851
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 349.449677
            Y: 22.3798828
          }
          Rotation {
            Yaw: 178.403595
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13941400651703270928
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 346.27652
            Y: 100.63681
          }
          Rotation {
            Yaw: -171.864578
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16864820320430407957
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 328.354462
            Y: 182.273834
          }
          Rotation {
            Yaw: -161.477
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2312948725923374351
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 128.64801
            Y: 436.999054
          }
          Rotation {
            Yaw: -120.434441
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7135615224771154658
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 62.6716309
            Y: 470.312408
          }
          Rotation {
            Yaw: -111.251945
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1809565235272306435
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -12.0926514
            Y: 493.647125
          }
          Rotation {
            Yaw: -101.520111
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14768129261047563887
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -95.0010376
            Y: 504.229889
          }
          Rotation {
            Yaw: -91.1325684
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12816569550898246443
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -171.968018
            Y: 500.591095
          }
          Rotation {
            Yaw: -81.5584717
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15335884181886108947
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -244.240112
            Y: 485.117035
          }
          Rotation {
            Yaw: -72.3762817
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3492093594821875809
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -317.090576
            Y: 456.359
          }
          Rotation {
            Yaw: -62.6445
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15364077271912958956
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -402.517822
            Y: 401.469635
          }
          Rotation {
            Yaw: -50.0165672
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3450300776568714262
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -407.775757
            Y: -311.402832
          }
          Rotation {
            Yaw: 51.0669174
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16747908533641273891
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -347.447632
            Y: -354.101227
          }
          Rotation {
            Yaw: 60.2489319
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3208187392155615544
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -276.95282
            Y: -388.229279
          }
          Rotation {
            Yaw: 69.980629
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17513288659056201120
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -196.518799
            Y: -410.948334
          }
          Rotation {
            Yaw: 80.3684158
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8479461709532105254
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -119.392944
            Y: -418.732788
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12890298279318944099
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -45.6321411
            Y: -414.0354
          }
          Rotation {
            Yaw: 99.1826248
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9805959241861068055
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 174.213837
            Y: -319.558105
          }
          Rotation {
            Yaw: 129.222351
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16081292179533858411
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 228.385468
            Y: -269.277405
          }
          Rotation {
            Yaw: 138.404984
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 71669674113256392
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 276.255585
            Y: -207.288025
          }
          Rotation {
            Yaw: 148.136597
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9667854792019401360
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 314.999817
            Y: -133.229523
          }
          Rotation {
            Yaw: 158.524231
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2332031485987362244
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -563.818115
            Y: -50.8191833
          }
          Rotation {
            Yaw: 12.6564922
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10437278552533601042
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -543.074
            Y: -121.758209
          }
          Rotation {
            Yaw: 21.8381596
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18445837303509384450
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -509.038818
            Y: -192.297852
          }
          Rotation {
            Yaw: 31.570116
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13158274382649879083
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -460.127441
            Y: -260.073029
          }
          Rotation {
            Yaw: 41.9580154
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1132077212796180683
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 30.6506348
            Y: -396.282288
            Z: 92.2661743
          }
          Rotation {
            Yaw: 108.914513
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6410754483842266538
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 107.495483
            Y: -363.408905
            Z: 92.2661743
          }
          Rotation {
            Yaw: 119.30162
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1859813688454641026
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 340.269836
            Y: -50.9575806
            Z: 92.2661743
          }
          Rotation {
            Yaw: 169.220978
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4938730311437821556
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 349.449677
            Y: 22.3798828
            Z: 92.2661743
          }
          Rotation {
            Yaw: 178.403595
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7207706921833878668
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 346.27652
            Y: 100.63681
            Z: 92.2661743
          }
          Rotation {
            Yaw: -171.864578
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13676088219557457245
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 328.354462
            Y: 182.273834
            Z: 92.2661743
          }
          Rotation {
            Yaw: -161.477
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16776648577677506492
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 111.461456
            Y: 446.981354
            Z: 92.2661743
          }
          Rotation {
            Yaw: -117.967499
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17784755673838268006
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 44.1124268
            Y: 477.424133
            Z: 92.2661743
          }
          Rotation {
            Yaw: -108.785065
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11337047300831211613
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -31.5869751
            Y: 497.519257
            Z: 92.2661743
          }
          Rotation {
            Yaw: -99.0533752
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12927473251765759660
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -114.873962
            Y: 504.523651
            Z: 92.2661743
          }
          Rotation {
            Yaw: -88.6656799
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 667911617386648686
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -189.815125
            Y: 497.887604
            Z: 92.2661743
          }
          Rotation {
            Yaw: -79.3182373
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6854240543770809077
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -261.426941
            Y: 479.600128
            Z: 92.2661743
          }
          Rotation {
            Yaw: -70.1360703
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9121616045392517564
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -333.097595
            Y: 448.016266
            Z: 92.2661743
          }
          Rotation {
            Yaw: -60.4041138
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16988995178163630238
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -402.517822
            Y: 401.469635
            Z: 92.2661743
          }
          Rotation {
            Yaw: -50.0165672
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4592104318052803429
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -407.775757
            Y: -311.402832
            Z: 92.2661743
          }
          Rotation {
            Yaw: 51.0669174
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 98030176337333874
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -347.447632
            Y: -354.101227
            Z: 92.2661743
          }
          Rotation {
            Yaw: 60.2489319
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2722154807174227625
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -276.95282
            Y: -388.229279
            Z: 92.2661743
          }
          Rotation {
            Yaw: 69.980629
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11934736745372505358
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -196.518799
            Y: -410.948334
            Z: 92.2661743
          }
          Rotation {
            Yaw: 80.3684158
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16939954732529730901
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -119.392944
            Y: -418.732788
            Z: 92.2661743
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14934746911585255643
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -45.6321411
            Y: -414.0354
            Z: 92.2661743
          }
          Rotation {
            Yaw: 99.1826248
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2378131368057926165
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 174.213837
            Y: -319.558105
            Z: 92.2661743
          }
          Rotation {
            Yaw: 129.222351
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11227055890943540872
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 228.385468
            Y: -269.277405
            Z: 92.2661743
          }
          Rotation {
            Yaw: 138.404984
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16576803917095153756
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 276.255585
            Y: -207.288025
            Z: 92.2661743
          }
          Rotation {
            Yaw: 148.136597
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4023688634688208589
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 314.999817
            Y: -133.229523
            Z: 92.2661743
          }
          Rotation {
            Yaw: 158.524231
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3332164986972177191
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -563.818115
            Y: -50.8191833
            Z: 92.2661743
          }
          Rotation {
            Yaw: 12.6564922
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17219713399681700321
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -543.074
            Y: -121.758209
            Z: 92.2661743
          }
          Rotation {
            Yaw: 21.8381596
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10381283515954136821
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -509.038818
            Y: -192.297852
            Z: 92.2661743
          }
          Rotation {
            Yaw: 31.570116
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11193359452437786936
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -460.127441
            Y: -260.073029
            Z: 92.2661743
          }
          Rotation {
            Yaw: 41.9580154
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2039469551900602786
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -488.204224
            Y: 310.121735
            Z: 92.2661743
          }
          Rotation {
            Yaw: -34.4245377
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1407592675419237595
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -526.028076
            Y: 246.623627
            Z: 92.2661743
          }
          Rotation {
            Yaw: -25.2426834
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15489649489169442583
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -554.509033
            Y: 173.663971
            Z: 92.2661743
          }
          Rotation {
            Yaw: -15.5112457
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3847562512284255725
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -570.835205
            Y: 91.6930237
            Z: 92.2661743
          }
          Rotation {
            Yaw: -5.12289667
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11832967340814165416
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: -572.775391
            Y: 18.4012146
            Z: 92.2661743
          }
          Rotation {
            Yaw: 3.98588347
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7047677505211592972
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 225.706207
            Y: 357.910492
            Z: 92.2661743
          }
          Rotation {
            Yaw: -136.01947
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10496677612379220085
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 271.656067
            Y: 300.020294
            Z: 92.2661743
          }
          Rotation {
            Yaw: -145.202911
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1282446259547340743
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 167.595734
            Y: 410.421722
            Z: 92.2661743
          }
          Rotation {
            Yaw: -126.288696
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1887603712280097078
        Name: "Stone Arch (doorway) 001"
        Transform {
          Location {
            X: 305.05838
            Y: 241.356186
            Z: 92.2661743
          }
          Rotation {
            Yaw: -153.588379
          }
          Scale {
            X: 0.377714604
            Y: 0.275621057
            Z: 0.245704025
          }
        }
        ParentId: 5184977180739974827
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
        }
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
            Id: 2169686501639234912
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10976439342121074688
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 224.350891
          }
          Rotation {
            Yaw: 30.1139812
          }
          Scale {
            X: 0.908875048
            Y: 0.908875048
            Z: 0.28470695
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 13.3142891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.67420721
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10176650175498319785
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 450.450134
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -179.999969
            Roll: -179.999969
          }
          Scale {
            X: 6
            Y: 6
            Z: 4
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12030779145367422351
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 3.19634199
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 3.05695295
          }
        }
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17939862650827967336
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 221.431854
          }
          Rotation {
            Yaw: 68.5246048
          }
          Scale {
            X: 0.946027815
            Y: 0.946027815
            Z: 0.296345174
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5663735676046209887
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              A: 1
            }
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18416371064534307111
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
          }
          Rotation {
            Yaw: 30.1139908
          }
          Scale {
            X: 1.07812572
            Y: 1.07812572
            Z: 0.337725252
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 13.3142891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.67420721
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9587340877596409496
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 424.664734
          }
          Rotation {
            Yaw: 27.8735847
          }
          Scale {
            X: 0.96972245
            Y: 0.96972245
            Z: 0.0202700086
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 15.2198925
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.328898937
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4604141148230859131
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 518.261719
          }
          Rotation {
            Yaw: -50.1217651
          }
          Scale {
            X: 0.95655036
            Y: 0.95655036
            Z: 0.033
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 57.9892082
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.328898937
          }
        }
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
            Id: 11110022693932442276
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10725213869248888312
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 531.601746
          }
          Rotation {
            Yaw: 30.1140251
          }
          Scale {
            X: 0.951347589
            Y: 0.951347589
            Z: 0.0198859219
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 7.79729033
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.23908806
          }
        }
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
            Id: 11110022693932442276
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1011241229932583588
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 224.679504
          }
          Rotation {
            Yaw: 30.1139908
          }
          Scale {
            X: 0.941624343
            Y: 0.941624343
            Z: 0.294965804
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 13.3142891
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 7.79729033
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13412124471029691061
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 359.246826
          }
          Rotation {
          }
          Scale {
            X: 0.830752194
            Y: 0.830752194
            Z: 0.123608872
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15117425227820281460
        Name: "Lens - Half"
        Transform {
          Location {
            X: -7.45068359
            Y: 2.85797119
            Z: 362.834167
          }
          Rotation {
          }
          Scale {
            X: 0.875905156
            Y: 0.875905156
            Z: 0.130327269
          }
        }
        ParentId: 13176663833136593560
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15418189413604061223
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
            Id: 18255230434453013622
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3363884863528510921
        Name: "Terrain"
        Transform {
          Location {
            X: -309.344208
            Y: 34.1858177
            Z: 48.056427
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11246812462898306070
        ChildIds: 15742334455660258246
        ChildIds: 16774493752645459074
        ChildIds: 2510178978088658184
        ChildIds: 18325520896784996547
        ChildIds: 8246806347725405997
        ChildIds: 9636927647810990405
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15742334455660258246
        Name: "Hill 01"
        Transform {
          Location {
            X: 133.438416
            Y: -79.3728943
          }
          Rotation {
          }
          Scale {
            X: 1.44022429
            Y: 0.967901289
            Z: 1.44022429
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16057688064143076256
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.36721849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.82103205
          }
        }
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
            Id: 6929891987367692181
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16774493752645459074
        Name: "Hill 01"
        Transform {
          Location {
            X: 133.438416
            Y: 48.9969788
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 1.44022405
            Y: 1.06480253
            Z: 1.44022429
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16057688064143076256
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 4.36721849
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 6.82103205
          }
        }
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
            Id: 6929891987367692181
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2510178978088658184
        Name: "Hill 01"
        Transform {
          Location {
            X: 133.438416
            Y: -1.00302124
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 3.99999928
            Y: 3.29337192
            Z: 5.11474228
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3165784792760201575
            }
          }
        }
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
            Id: 3597792083627246332
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18325520896784996547
        Name: "Rock 01"
        Transform {
          Location {
            X: -126.579468
            Y: 302.28476
            Z: 112.511353
          }
          Rotation {
            Yaw: 42.6751633
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16057688064143076256
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 16751224094635422494
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8246806347725405997
        Name: "Rock 01"
        Transform {
          Location {
            X: -273.735596
            Y: -270.905701
            Z: 132.14325
          }
          Rotation {
            Yaw: 169.352692
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16057688064143076256
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 16751224094635422494
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9636927647810990405
        Name: "Hill 01"
        Transform {
          Location {
            X: 133.438416
            Y: -1.00302124
          }
          Rotation {
            Yaw: -179.999954
          }
          Scale {
            X: 5.71745586
            Y: 4.70742702
            Z: 2.10902572
          }
        }
        ParentId: 3363884863528510921
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3165784792760201575
            }
          }
        }
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
            Id: 3597792083627246332
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10242018125888256849
        Name: "RespawnPoint"
        Transform {
          Location {
            X: -89.8477783
            Y: -683.397705
            Z: 135.218658
          }
          Rotation {
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 13.000001
          }
        }
        ParentId: 11246812462898306070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12013037231334415157
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14019034895127529982
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9584298459335484778
        Name: "ClientContext"
        Transform {
          Location {
            X: 6.4730835
            Y: -33.2069397
            Z: -5.40319824
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
        ChildIds: 9739664998843507988
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9739664998843507988
        Name: "FX"
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
        ParentId: 9584298459335484778
        ChildIds: 3989748754442141779
        ChildIds: 13567089118540079288
        ChildIds: 18305656199422109831
        ChildIds: 12942976621477046322
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3989748754442141779
        Name: "Audio"
        Transform {
          Location {
            X: -36.4453735
            Y: 26.7087708
            Z: 5.40316772
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9739664998843507988
        ChildIds: 6138716722727186785
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6138716722727186785
        Name: "Sports Crowd Intense Outdoor Arena Loop 01 SFX"
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
        ParentId: 3989748754442141779
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
        AudioInstance {
          AudioAsset {
            Id: 9041344783561318621
          }
          AutoPlay: true
          Repeat: true
          Volume: 0.105697937
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13567089118540079288
        Name: "crowd"
        Transform {
          Location {
            X: -5.39189148
            Y: 33.7955322
            Z: 11.2866211
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9739664998843507988
        ChildIds: 8376039110559594916
        ChildIds: 17725292567751093350
        ChildIds: 6239927168275048154
        ChildIds: 8917264275627402754
        ChildIds: 4774199441839496634
        ChildIds: 3820225793436488188
        ChildIds: 1139312366033717059
        ChildIds: 5290264847105645140
        ChildIds: 16033619006751427643
        ChildIds: 10880970327786328449
        ChildIds: 1036429325764924978
        ChildIds: 15814481051364522692
        ChildIds: 6887709105703550324
        ChildIds: 8890459763030564903
        ChildIds: 9661208925201560297
        ChildIds: 11423495884120925416
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8376039110559594916
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 336.685028
            Y: 95.749939
          }
          Rotation {
            Yaw: -73.4889
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17725292567751093350
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 348.489746
            Y: -34.756073
          }
          Rotation {
            Yaw: -94.990387
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6239927168275048154
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 228.070435
            Y: -266.777649
          }
          Rotation {
            Yaw: -138.68367
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8917264275627402754
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 309.689392
            Y: -164.261414
          }
          Rotation {
            Yaw: -117.182053
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4774199441839496634
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 101.751526
            Y: -336.434387
          }
          Rotation {
            Yaw: -162.383972
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3820225793436488188
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -28.5026245
            Y: -350.753235
          }
          Rotation {
            Yaw: 176.114334
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1139312366033717059
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -262.80249
            Y: -234.829437
          }
          Rotation {
            Yaw: 132.421
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5290264847105645140
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -158.731873
            Y: -314.456848
          }
          Rotation {
            Yaw: 153.922836
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16033619006751427643
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 159.939697
            Y: 311.564
          }
          Rotation {
            Yaw: -26.6940479
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10880970327786328449
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -350.26355
            Y: 37.3409119
          }
          Rotation {
            Yaw: 84.3926239
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1036429325764924978
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -227.353149
            Y: 268.052094
          }
          Rotation {
            Yaw: 40.6993446
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15814481051364522692
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -310.071533
            Y: 166.420746
          }
          Rotation {
            Yaw: 62.2008476
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6887709105703550324
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -100.291748
            Y: 336.345367
          }
          Rotation {
            Yaw: 17.0000248
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8890459763030564903
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 30.1091919
            Y: 349.260284
          }
          Rotation {
            Yaw: -4.50277901
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9661208925201560297
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: 263.147217
            Y: 230.820221
          }
          Rotation {
            Yaw: -48.1958389
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11423495884120925416
        Name: "Stadium Crowd 8x8"
        Transform {
          Location {
            X: -339.865
            Y: -93.2845764
          }
          Rotation {
            Yaw: 105.894241
          }
          Scale {
            X: 0.133518249
            Y: 0.143529773
            Z: 0.256771147
          }
        }
        ParentId: 13567089118540079288
        UnregisteredParameters {
          Overrides {
            Name: "ma:crowd:id"
            AssetReference {
              Id: 2020505116162992632
            }
          }
        }
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
            Id: 16385975024763632500
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18305656199422109831
        Name: "Flare Ray VFX"
        Transform {
          Location {
            X: 86.2710571
            Y: -540.729431
            Z: 785.37915
          }
          Rotation {
            Pitch: -48.0957909
            Yaw: 100.948608
            Roll: -46.0485916
          }
          Scale {
            X: 2.60598969
            Y: 2.60598969
            Z: 2.60598969
          }
        }
        ParentId: 9739664998843507988
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Brightness"
            Float: 0.310810089
          }
          Overrides {
            Name: "bp:Ray Density"
            Float: 3.48062277
          }
          Overrides {
            Name: "bp:Ray Width"
            Float: 40
          }
          Overrides {
            Name: "bp:Ray Height"
            Float: 40
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 0.796423852
              B: 0.470000029
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color B"
            Color {
              R: 1
              G: 0.545563
              B: 0.0600000024
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color C"
            Color {
              R: 1
              G: 0.601721883
              B: 0.38
              A: 1
            }
          }
        }
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
        Blueprint {
          BlueprintAsset {
            Id: 1477831710005124304
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12942976621477046322
        Name: "Dust Puff VFX"
        Transform {
          Location {
            X: -13.696167
            Y: 12.8876953
            Z: -111.480682
          }
          Rotation {
          }
          Scale {
            X: 1.56607258
            Y: 1.56607258
            Z: -5.06084728
          }
        }
        ParentId: 9739664998843507988
        UnregisteredParameters {
          Overrides {
            Name: "bp:Radius"
            Float: 3.90947318
          }
          Overrides {
            Name: "bp:Density"
            Float: 4.04113865
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 6.09318733
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.676123381
          }
          Overrides {
            Name: "bp:Local Space"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 15268213763815400530
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13642333704285473063
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 4
            Y: 4
            Z: 4
          }
        }
        ParentId: 8456419368000778161
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 8388493796315868159
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 15418189413604061223
      Name: "Bricks Mortar Thick 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_bricks_mortar_001_uv"
      }
    }
    Assets {
      Id: 11110022693932442276
      Name: "Pipe Thin 01 - Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_thin_lg_001_ref"
      }
    }
    Assets {
      Id: 14428585022685220673
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 18255230434453013622
      Name: "Pipe - Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_lg_001_ref"
      }
    }
    Assets {
      Id: 2169686501639234912
      Name: "Stone Arch (doorway) 001"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_stone_doorway_001"
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
      Id: 12030779145367422351
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
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
    Assets {
      Id: 6929891987367692181
      Name: "Hill 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_001"
      }
    }
    Assets {
      Id: 16057688064143076256
      Name: "Cliff 03"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "cliff_003"
      }
    }
    Assets {
      Id: 3597792083627246332
      Name: "Hill 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_003"
      }
    }
    Assets {
      Id: 3165784792760201575
      Name: "Terrain - Grass Cliffs"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_cliff-grass-001_wa"
      }
    }
    Assets {
      Id: 16751224094635422494
      Name: "Rock 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_001"
      }
    }
    Assets {
      Id: 14019034895127529982
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 12013037231334415157
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
    Assets {
      Id: 9041344783561318621
      Name: "Sports Crowd Intense Outdoor Arena Loop 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_sports_crowd_intense_outdoor_arena_01_Cue_ref"
      }
    }
    Assets {
      Id: 16385975024763632500
      Name: "Stadium Crowd 8x8"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "fxsm_stadium_crowd_test"
      }
    }
    Assets {
      Id: 1477831710005124304
      Name: "Flare Ray VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_ray_system"
      }
    }
    Assets {
      Id: 15268213763815400530
      Name: "Dust Puff VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_dust_puff"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 104
}

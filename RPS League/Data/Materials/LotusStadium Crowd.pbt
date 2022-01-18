Assets {
  Id: 2020505116162992632
  Name: "LotusStadium Crowd"
  PlatformAssetType: 13
  SerializationVersion: 104
  CustomMaterialAsset {
    BaseMaterialId: 13431787113548457354
    ParameterOverrides {
      Overrides {
        Name: "head_color_b"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "head_color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "head_color_c"
        Color {
          R: 0.830000043
          A: 1
        }
      }
      Overrides {
        Name: "eye_color_b"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "eye_color_c"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "b_single_color"
        Bool: false
      }
      Overrides {
        Name: "i_gradient_type"
        Int: 2
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "crowd_fill"
        Float: 0.653984487
      }
      Overrides {
        Name: "i_row_count"
        Int: 9
      }
      Overrides {
        Name: "i_column_count"
        Int: 11
      }
      Overrides {
        Name: "crowd_fill_random_offset"
        Float: 0
      }
      Overrides {
        Name: "b_wave"
        Bool: true
      }
      Overrides {
        Name: "height_offset"
        Float: 10
      }
    }
    Assets {
      Id: 13431787113548457354
      Name: "Crowd"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_crowd"
      }
    }
  }
}

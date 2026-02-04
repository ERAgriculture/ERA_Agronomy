#' Aggregate values by name
#'
#' This function prepares restructures an ERA dataset to merge practices conducted in combination with other practices to a single lable. For example, a row with the practice `Inorganic Fertilizer-Organic Fertilizer` would be replicated twice, once for each practice present in the practice name.
#' The practices names for each row would be `Inorganic_Fertilizer_Combo` and `Organic Fertilizer Combo`
#'
#' @param Data The compiled ERA dataset
#' @param DoCombinations Logical `T/F`. When set to TRUE rows with >1 experimental practice are duplicated for the number of practices present and PrName/SubPrName fields changed to one of those practices
#' (e.g. if PrName is Mulch-BioChar then the row is duplicated (n=2) with PrName in row 1 as Mulch and in row 2 as BioChar). The copied rows are joined and the function output changes to a list of two data.tables, "Data"
#' and "Data.Combos" . Note ONLY the PrName/SubPrName field is changed in the Data.Combos table, all other fields remain the same. Default = `F`.
#' @param CombineAll Logical `T/F`. Applies only when DoCombinations is `TRUE.` When set to TRUE all rows containing a practice (alone or in combination with other practices) are copied to the
#' Data.Combos table and renamed. When set FALSE only the rows of a practice where it occurs in combination with other practice are copied to the Data.Combos table and renamed.
#' Default = F.
#' @param Target_Field Character. The name of the field containing the values to be aggregated
#' @param Delim Character. The delimter that separates multiple names within a character string (for example the delimiter `-` separates two practices in the string `Inorganic Fertilizer-Organic Fertilizer`)
#' @return If DoCombinations = F a data.table of the processed ERA dataset. If DoCombinations = T a list of two data.tables, "Data" as per combinations = F and "Data.Combos" where
#' PrNames/SubPrName have been modified to reflect combination practices.
#' @export
#' @import data.table
#' @importFrom data.table rbindlist
aggregate_names <- function(Data,
                            CombineAll = FALSE,
                            DoCombinations = FALSE,
                            Target_Field = "PrName",
                            Delim = "-") {
  
  if (DoCombinations) {
    DataX <- data.frame(Data)
    target_values <- DataX[[Target_Field]]
    split_values <- unique(unlist(strsplit(unique(target_values), Delim, fixed = TRUE)))
    
    if (CombineAll) {
      Combinations <- rbindlist(lapply(split_values, function(X) {
        Y <- DataX[grep(X, target_values), ]
        if (nrow(Y) == 0) return(NULL)  # skip if no rows
        Y <- data.table(Y)
        Y[[Target_Field]] <- X
        return(Y)
      }), fill = TRUE)
      
    } else {
      Combinations <- rbindlist(lapply(split_values, function(X) {
        Y <- DataX[grepl(X, target_values) & grepl(Delim, target_values), ]
        if (nrow(Y) == 0) return(NULL)  # skip if no rows
        Y <- data.table(Y)
        Y[[Target_Field]] <- X
        return(Y)
      }), fill = TRUE)
    }
    
    DataX <- data.table(DataX)[, Is.Combo := FALSE]
    Combinations <- data.table(Combinations)[, Is.Combo := TRUE]
    
    return(list(Data = DataX, Data.Combos = Combinations))
    
  } else {
    return(Data)
  }
}

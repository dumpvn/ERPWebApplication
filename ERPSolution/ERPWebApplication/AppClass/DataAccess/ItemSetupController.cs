﻿using ERPWebApplication.AppClass.Model;
using ERPWebApplication.CommonClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ERPWebApplication.AppClass.DataAccess
{
    public class ItemSetupController:DataAccessBase 
    {
        internal void Save(string connectionString, ItemSetup objItemSetup)
        {
            try
            {
                var storedProcedureComandTest = "exec [spInitiatematMaterialSetup] " +
                                        objItemSetup.ItemID + "," +
                                        objItemSetup.ItemCategoryID + "," +
                                        objItemSetup.ItemTypeID + "," +
                                        objItemSetup.ItemPropertySetID + "," +
                                        objItemSetup.ItemUsageID + ",'" +
                                        objItemSetup.ModelNo + "'," +
                                        objItemSetup.UnitID + ",'" +
                                        objItemSetup.HsCode + "','" +
                                        objItemSetup.ItemCode + "','" +
                                        objItemSetup.Specification + "'," +
                                        objItemSetup.OpenningBalance + ",'" +
                                        objItemSetup.SupplierID + "'," +
                                        objItemSetup.IsVATAbleItem + "," +
                                        objItemSetup.CoaSalesAccNo + "," +
                                        objItemSetup.CoaStockAccNo + "," +
                                        objItemSetup.CoacgsAccNo + "," +
                                        objItemSetup.CoaSalesRetAccNo + ",'" +
                                        objItemSetup.EntryUserName + "'," +
                                        objItemSetup.BreakUpQuantity + ",'" +
                                        objItemSetup.ReOrderLevel + "',"+
                                        objItemSetup.BreakUpUnitD+","+
                                        objItemSetup.MinimumQuantity;
                clsDataManipulation.StoredProcedureExecuteNonQuery(connectionString, storedProcedureComandTest);
            }
            catch (Exception msgException)
            {

                throw msgException;
            }
        }

        internal void Update(string connectionString, ItemSetup objItemSetup)
        {
            try
            {
                var storedProcedureComandTest = "exec [spUpdatematMaterialSetup] " +
                                        objItemSetup.ItemID + "," +
                                        objItemSetup.ItemCategoryID + "," +
                                        objItemSetup.ItemTypeID + "," +
                                        objItemSetup.ItemPropertySetID + "," +
                                        objItemSetup.ItemUsageID + ",'" +
                                        objItemSetup.ModelNo + "'," +
                                        objItemSetup.UnitID + ",'" +
                                        objItemSetup.HsCode + "','" +
                                        objItemSetup.ItemCode + "','" +
                                        objItemSetup.Specification + "'," +
                                        objItemSetup.OpenningBalance + ",'" +
                                        objItemSetup.SupplierID + "'," +
                                        objItemSetup.IsVATAbleItem + "," +
                                        objItemSetup.CoaSalesAccNo + "," +
                                        objItemSetup.CoaStockAccNo + "," +
                                        objItemSetup.CoacgsAccNo + "," +
                                        objItemSetup.CoaSalesRetAccNo + ",'" +
                                        objItemSetup.EntryUserName + "'," +
                                        objItemSetup.BreakUpQuantity + ",'" +
                                        objItemSetup.ReOrderLevel + "'," +
                                        objItemSetup.BreakUpUnitD + "," +
                                        objItemSetup.MinimumQuantity;
                clsDataManipulation.StoredProcedureExecuteNonQuery(connectionString, storedProcedureComandTest);
            }
            catch (Exception msgException)
            {

                throw msgException;
            }
        }

        public string SQLForAccountType(ItemCategorySetup objItemCategorySetup)
        {
            string sqlString = null;
            sqlString = @"SELECT B.AccountNo,B.AccountName FROM accCOAAccountTypeSetup A INNER JOIN accCOAHeadSetup B ON A.AccountTypeID = B.AccountTypeID
                                WHERE  A.KnownValueID = " + objItemCategorySetup.KnownValueID + " AND A.CompanyID = " + objItemCategorySetup.CompanyID + " AND A.BranchID = " + objItemCategorySetup.BranchID + "";
            return sqlString;
        }


        internal DataTable GetItemDetails(string connectionString, ItemSetup _objItemSetup)
        {
            try
            {
                DataTable dtItemDetails = null;
                var storedProcedureComandTest = "exec [spGetDetailsmatMaterialSetup] "+_objItemSetup.ItemID+"";
                dtItemDetails = clsDataManipulation.GetData(connectionString, storedProcedureComandTest);
                return dtItemDetails;

            }
            catch (Exception msgException)
            {
                
                throw msgException;
            }
        }



        internal DataTable GetItemDetails2(string connectionString, ItemSetup _objItemSetup)
        {
            DataTable dtItemDetails = null;
            try
            {

                var storedProcedureComandTest = "  SELECT * FROM matMaterialSetup where  ItemID =" + _objItemSetup.ItemCode + "";
                dtItemDetails = clsDataManipulation.GetData(connectionString, storedProcedureComandTest);
                return dtItemDetails;

            }
            catch
            {
                return dtItemDetails;
           
            }
        }





        public static string GetItemDetail(int companyID, int branchID)
        {
            return "SELECT * FROM  matMaterialSetup where  CompanyID=" + companyID + " and branchID=" + branchID + "";
        }
        public static string GetItemDetailSearch(string keybal, int companyID, int branchID)
        {
            return "SELECT  ItemID,ItemCode, ModelNo FROM matMaterialSetup where (ItemCode Like '" + keybal + "') OR (ModelNo Like '" + keybal + "') and CompanyID=" + companyID + " and BranchID=" + branchID + " ";
        }


        public DataTable  GetItemUnit(int itemId, int companyID, int branchID)
        {

            try
            {
                DataTable dtUnit = null;

               var storedProcedureComandText= "select a.ItemID,a.ItemCode,b.UnitID,b.Unit,b.DataUsed from matMaterialSetup a "
               + " inner join matUnitSetup b on a.UnitID=b.UnitID where (b.DataUsed='A' and a.ItemID= " + Convert.ToInt32(itemId) + " and b.CompanyID=" + companyID + " and b.branchID=" + branchID + ")";

               dtUnit = clsDataManipulation.GetData(this.ConnectionString, storedProcedureComandText);
               return dtUnit;

            }
            catch (Exception ex)
            {

                throw ex;
            
            }
        }

        public string GetCategoryAndItem()
        {
            string sqlString = null;
            sqlString = @"select CategoryName as ModelNo from matCategoryList 
                        union 
                        select A.ModelNo from matMaterialSetup A 
                        inner join matCategoryList  B on A.ItemCategoryID=B.ItemCategoryID ORDER BY CategoryName";
            return sqlString;
        }
        public string GetCategoryAndItem(string keyValue)
        {
            string sqlString = null;
            sqlString = "select CategoryName as ModelNo from matCategoryList where(CategoryName Like '" + keyValue + "') union  select A.ModelNo from matMaterialSetup A " +
                            " inner join matCategoryList  B on A.ItemCategoryID=B.ItemCategoryID  where (ModelNo Like '" + keyValue + "') " +
                            " ORDER BY CategoryName";
            return sqlString;
        }



        public string GenerateTemporaryItemRefNo(string connectionString, string companyID, string branchID, DateTime requisitionDate, int refNoFor,int sl)
        {

            try
            {

                DateTime dt = Convert.ToDateTime(requisitionDate);
                string refno;
                string RefFormate;

                RefFormate = companyID + branchID + "9" + string.Format("{0:00}", requisitionDate.Month) + string.Format("{0:00}", requisitionDate.Year.ToString().Substring(2, 2));
                refno = RefFormate + string.Format("{0:00}", sl);
                return refno;
            }

            catch (Exception ex)
            {

                throw ex;
            
            }

        }
    }
}
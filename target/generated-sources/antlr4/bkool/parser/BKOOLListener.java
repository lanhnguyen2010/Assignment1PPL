// Generated from BKOOL.g4 by ANTLR 4.4

	package bkool.parser;

import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link BKOOLParser}.
 */
public interface BKOOLListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link BKOOLParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(@NotNull BKOOLParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link BKOOLParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(@NotNull BKOOLParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link BKOOLParser#class_decl}.
	 * @param ctx the parse tree
	 */
	void enterClass_decl(@NotNull BKOOLParser.Class_declContext ctx);
	/**
	 * Exit a parse tree produced by {@link BKOOLParser#class_decl}.
	 * @param ctx the parse tree
	 */
	void exitClass_decl(@NotNull BKOOLParser.Class_declContext ctx);
}
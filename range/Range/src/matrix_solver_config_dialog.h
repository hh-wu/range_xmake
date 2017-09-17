/*********************************************************************
 *  AUTHOR: Tomas Soltys                                             *
 *  FILE:   matrix_solver_config_dialog.h                            *
 *  GROUP:  Range                                                    *
 *  TYPE:   header file (*.h)                                        *
 *  DATE:   1-st February 2013                                       *
 *                                                                   *
 *  DESCRIPTION: Matrix solver config. dialog class declaration      *
 *********************************************************************/

#ifndef __MATRIX_SOLVER_CONFIG_DIALOG_H__
#define __MATRIX_SOLVER_CONFIG_DIALOG_H__

#include <QDialog>
#include <QSpinBox>
#include <QGroupBox>

#include "value_line_edit.h"

class MatrixSolverConfigDialog : public QDialog
{

    Q_OBJECT

    protected:

        //! Model ID.
        uint modelID;
        //! CG SOLVER CONFIGURATION
        QGroupBox *groupCG;
        //! Number of iterations.
        QSpinBox *spinCGNIterations;
        //! Convergence value.
        ValueLineEdit *editCGCvgValue;
        //! Output frequency.
        QSpinBox *spinCGOutputFrequency;
        //! GMRES SOLVER CONFIGURATION
        QGroupBox *groupGMRES;
        //! Number of inner iterations.
        QSpinBox *spinGMRESNInnerIterations;
        //! Number of outer iterations.
        QSpinBox *spinGMRESNOuterIterations;
        //! Convergence value.
        ValueLineEdit *editGMRESCvgValue;
        //! Output frequency.
        QSpinBox *spinGMRESOutputFrequency;

    public:

        //! Constructor.
        explicit MatrixSolverConfigDialog(uint modelID,QWidget *parent = 0);

        //! Execute dialog.
        int exec(void);
        
    signals:
        
    public slots:
        
};

#endif // __MATRIX_SOLVER_CONFIG_DIALOG_H__
